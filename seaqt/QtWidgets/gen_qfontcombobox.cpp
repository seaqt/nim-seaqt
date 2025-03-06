#include <QAbstractItemModel>
#include <QActionEvent>
#include <QByteArray>
#include <QChildEvent>
#include <QCloseEvent>
#include <QComboBox>
#include <QContextMenuEvent>
#include <QDragEnterEvent>
#include <QDragLeaveEvent>
#include <QDragMoveEvent>
#include <QDropEvent>
#include <QEnterEvent>
#include <QEvent>
#include <QFocusEvent>
#include <QFont>
#include <QFontComboBox>
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
#include <QStyleOptionComboBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qfontcombobox.h>
#include "gen_qfontcombobox.h"

#ifdef __cplusplus
extern "C" {
#endif

void miqt_exec_callback_QFontComboBox_currentFontChanged(intptr_t, QFont*);
#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQFontComboBox final : public QFontComboBox {
	struct QFontComboBox_VTable* vtbl;
public:

	VirtualQFontComboBox(struct QFontComboBox_VTable* vtbl, QWidget* parent): QFontComboBox(parent), vtbl(vtbl) {};
	VirtualQFontComboBox(struct QFontComboBox_VTable* vtbl): QFontComboBox(), vtbl(vtbl) {};

	virtual ~VirtualQFontComboBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QFontComboBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QFontComboBox_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QFontComboBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QFontComboBox_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QFontComboBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QFontComboBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFontComboBox_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* e) override {
		if (vtbl->event == 0) {
			return QFontComboBox::event(e);
		}

		QEvent* sigval1 = e;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_event(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void setModel(QAbstractItemModel* model) override {
		if (vtbl->setModel == 0) {
			QFontComboBox::setModel(model);
			return;
		}

		QAbstractItemModel* sigval1 = model;

		vtbl->setModel(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_setModel(void* self, QAbstractItemModel* model);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QFontComboBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QFontComboBox_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void showPopup() override {
		if (vtbl->showPopup == 0) {
			QFontComboBox::showPopup();
			return;
		}


		vtbl->showPopup(vtbl, this);

	}

	friend void QFontComboBox_virtualbase_showPopup(void* self);

	// Subclass to allow providing a Go implementation
	virtual void hidePopup() override {
		if (vtbl->hidePopup == 0) {
			QFontComboBox::hidePopup();
			return;
		}


		vtbl->hidePopup(vtbl, this);

	}

	friend void QFontComboBox_virtualbase_hidePopup(void* self);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QFontComboBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QFontComboBox_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* e) override {
		if (vtbl->focusInEvent == 0) {
			QFontComboBox::focusInEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_focusInEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* e) override {
		if (vtbl->focusOutEvent == 0) {
			QFontComboBox::focusOutEvent(e);
			return;
		}

		QFocusEvent* sigval1 = e;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* e) override {
		if (vtbl->changeEvent == 0) {
			QFontComboBox::changeEvent(e);
			return;
		}

		QEvent* sigval1 = e;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_changeEvent(void* self, QEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* e) override {
		if (vtbl->resizeEvent == 0) {
			QFontComboBox::resizeEvent(e);
			return;
		}

		QResizeEvent* sigval1 = e;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_resizeEvent(void* self, QResizeEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* e) override {
		if (vtbl->paintEvent == 0) {
			QFontComboBox::paintEvent(e);
			return;
		}

		QPaintEvent* sigval1 = e;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_paintEvent(void* self, QPaintEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* e) override {
		if (vtbl->showEvent == 0) {
			QFontComboBox::showEvent(e);
			return;
		}

		QShowEvent* sigval1 = e;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_showEvent(void* self, QShowEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* e) override {
		if (vtbl->hideEvent == 0) {
			QFontComboBox::hideEvent(e);
			return;
		}

		QHideEvent* sigval1 = e;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_hideEvent(void* self, QHideEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* e) override {
		if (vtbl->mousePressEvent == 0) {
			QFontComboBox::mousePressEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* e) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QFontComboBox::mouseReleaseEvent(e);
			return;
		}

		QMouseEvent* sigval1 = e;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* e) override {
		if (vtbl->keyPressEvent == 0) {
			QFontComboBox::keyPressEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* e) override {
		if (vtbl->keyReleaseEvent == 0) {
			QFontComboBox::keyReleaseEvent(e);
			return;
		}

		QKeyEvent* sigval1 = e;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* e) override {
		if (vtbl->wheelEvent == 0) {
			QFontComboBox::wheelEvent(e);
			return;
		}

		QWheelEvent* sigval1 = e;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_wheelEvent(void* self, QWheelEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* e) override {
		if (vtbl->contextMenuEvent == 0) {
			QFontComboBox::contextMenuEvent(e);
			return;
		}

		QContextMenuEvent* sigval1 = e;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QFontComboBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionComboBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QFontComboBox::initStyleOption(option);
			return;
		}

		QStyleOptionComboBox* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_initStyleOption(const void* self, QStyleOptionComboBox* option);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QFontComboBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QFontComboBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QFontComboBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QFontComboBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QFontComboBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QFontComboBox_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QFontComboBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QFontComboBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QFontComboBox::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QFontComboBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QFontComboBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QFontComboBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QFontComboBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QFontComboBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QFontComboBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QFontComboBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QFontComboBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QFontComboBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QFontComboBox::nativeEvent(eventType, message, result);
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

	friend bool QFontComboBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QFontComboBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QFontComboBox_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QFontComboBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QFontComboBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QFontComboBox_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QFontComboBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QFontComboBox_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QFontComboBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QFontComboBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QFontComboBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QFontComboBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QFontComboBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QFontComboBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QFontComboBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QFontComboBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QFontComboBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend void QFontComboBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QFontComboBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QFontComboBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QFontComboBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QFontComboBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QFontComboBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QFontComboBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QFontComboBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QFontComboBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QFontComboBox* QFontComboBox_new(struct QFontComboBox_VTable* vtbl, QWidget* parent) {
	return new VirtualQFontComboBox(vtbl, parent);
}

QFontComboBox* QFontComboBox_new2(struct QFontComboBox_VTable* vtbl) {
	return new VirtualQFontComboBox(vtbl);
}

void QFontComboBox_virtbase(QFontComboBox* src, QComboBox** outptr_QComboBox) {
	*outptr_QComboBox = static_cast<QComboBox*>(src);
}

QMetaObject* QFontComboBox_metaObject(const QFontComboBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QFontComboBox_metacast(QFontComboBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QFontComboBox_metacall(QFontComboBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QFontComboBox_tr(const char* s) {
	QString _ret = QFontComboBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontComboBox_setWritingSystem(QFontComboBox* self, int writingSystem) {
	self->setWritingSystem(static_cast<QFontDatabase::WritingSystem>(writingSystem));
}

int QFontComboBox_writingSystem(const QFontComboBox* self) {
	QFontDatabase::WritingSystem _ret = self->writingSystem();
	return static_cast<int>(_ret);
}

void QFontComboBox_setFontFilters(QFontComboBox* self, int filters) {
	self->setFontFilters(static_cast<QFontComboBox::FontFilters>(filters));
}

int QFontComboBox_fontFilters(const QFontComboBox* self) {
	QFontComboBox::FontFilters _ret = self->fontFilters();
	return static_cast<int>(_ret);
}

QFont* QFontComboBox_currentFont(const QFontComboBox* self) {
	return new QFont(self->currentFont());
}

QSize* QFontComboBox_sizeHint(const QFontComboBox* self) {
	return new QSize(self->sizeHint());
}

void QFontComboBox_setSampleTextForSystem(QFontComboBox* self, int writingSystem, struct miqt_string sampleText) {
	QString sampleText_QString = QString::fromUtf8(sampleText.data, sampleText.len);
	self->setSampleTextForSystem(static_cast<QFontDatabase::WritingSystem>(writingSystem), sampleText_QString);
}

struct miqt_string QFontComboBox_sampleTextForSystem(const QFontComboBox* self, int writingSystem) {
	QString _ret = self->sampleTextForSystem(static_cast<QFontDatabase::WritingSystem>(writingSystem));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontComboBox_setSampleTextForFont(QFontComboBox* self, struct miqt_string fontFamily, struct miqt_string sampleText) {
	QString fontFamily_QString = QString::fromUtf8(fontFamily.data, fontFamily.len);
	QString sampleText_QString = QString::fromUtf8(sampleText.data, sampleText.len);
	self->setSampleTextForFont(fontFamily_QString, sampleText_QString);
}

struct miqt_string QFontComboBox_sampleTextForFont(const QFontComboBox* self, struct miqt_string fontFamily) {
	QString fontFamily_QString = QString::fromUtf8(fontFamily.data, fontFamily.len);
	QString _ret = self->sampleTextForFont(fontFamily_QString);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QFontComboBox_setDisplayFont(QFontComboBox* self, struct miqt_string fontFamily, QFont* font) {
	QString fontFamily_QString = QString::fromUtf8(fontFamily.data, fontFamily.len);
	self->setDisplayFont(fontFamily_QString, *font);
}

void QFontComboBox_setCurrentFont(QFontComboBox* self, QFont* f) {
	self->setCurrentFont(*f);
}

void QFontComboBox_currentFontChanged(QFontComboBox* self, QFont* f) {
	self->currentFontChanged(*f);
}

void QFontComboBox_connect_currentFontChanged(QFontComboBox* self, intptr_t slot) {
	VirtualQFontComboBox::connect(self, static_cast<void (QFontComboBox::*)(const QFont&)>(&QFontComboBox::currentFontChanged), self, [=](const QFont& f) {
		const QFont& f_ret = f;
		// Cast returned reference into pointer
		QFont* sigval1 = const_cast<QFont*>(&f_ret);
		miqt_exec_callback_QFontComboBox_currentFontChanged(slot, sigval1);
	});
}

struct miqt_string QFontComboBox_tr2(const char* s, const char* c) {
	QString _ret = QFontComboBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QFontComboBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QFontComboBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QFontComboBox_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::metaObject();

}

void* QFontComboBox_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQFontComboBox*)(self) )->QFontComboBox::qt_metacast(param1);

}

int QFontComboBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQFontComboBox*)(self) )->QFontComboBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QFontComboBox_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQFontComboBox*)(self) )->QFontComboBox::sizeHint());

}

bool QFontComboBox_virtualbase_event(void* self, QEvent* e) {

	return ( (VirtualQFontComboBox*)(self) )->QFontComboBox::event(e);

}

void QFontComboBox_virtualbase_setModel(void* self, QAbstractItemModel* model) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::setModel(model);

}

QSize* QFontComboBox_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQFontComboBox*)(self) )->QFontComboBox::minimumSizeHint());

}

void QFontComboBox_virtualbase_showPopup(void* self) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::showPopup();

}

void QFontComboBox_virtualbase_hidePopup(void* self) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::hidePopup();

}

QVariant* QFontComboBox_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQFontComboBox*)(self) )->QFontComboBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

void QFontComboBox_virtualbase_focusInEvent(void* self, QFocusEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::focusInEvent(e);

}

void QFontComboBox_virtualbase_focusOutEvent(void* self, QFocusEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::focusOutEvent(e);

}

void QFontComboBox_virtualbase_changeEvent(void* self, QEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::changeEvent(e);

}

void QFontComboBox_virtualbase_resizeEvent(void* self, QResizeEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::resizeEvent(e);

}

void QFontComboBox_virtualbase_paintEvent(void* self, QPaintEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::paintEvent(e);

}

void QFontComboBox_virtualbase_showEvent(void* self, QShowEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::showEvent(e);

}

void QFontComboBox_virtualbase_hideEvent(void* self, QHideEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::hideEvent(e);

}

void QFontComboBox_virtualbase_mousePressEvent(void* self, QMouseEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::mousePressEvent(e);

}

void QFontComboBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::mouseReleaseEvent(e);

}

void QFontComboBox_virtualbase_keyPressEvent(void* self, QKeyEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::keyPressEvent(e);

}

void QFontComboBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::keyReleaseEvent(e);

}

void QFontComboBox_virtualbase_wheelEvent(void* self, QWheelEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::wheelEvent(e);

}

void QFontComboBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* e) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::contextMenuEvent(e);

}

void QFontComboBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::inputMethodEvent(param1);

}

void QFontComboBox_virtualbase_initStyleOption(const void* self, QStyleOptionComboBox* option) {

	( (const VirtualQFontComboBox*)(self) )->QFontComboBox::initStyleOption(option);

}

int QFontComboBox_virtualbase_devType(const void* self) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::devType();

}

void QFontComboBox_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::setVisible(visible);

}

int QFontComboBox_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::heightForWidth(static_cast<int>(param1));

}

bool QFontComboBox_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::hasHeightForWidth();

}

QPaintEngine* QFontComboBox_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::paintEngine();

}

void QFontComboBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::mouseDoubleClickEvent(event);

}

void QFontComboBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::mouseMoveEvent(event);

}

void QFontComboBox_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::enterEvent(event);

}

void QFontComboBox_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::leaveEvent(event);

}

void QFontComboBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::moveEvent(event);

}

void QFontComboBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::closeEvent(event);

}

void QFontComboBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::tabletEvent(event);

}

void QFontComboBox_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::actionEvent(event);

}

void QFontComboBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::dragEnterEvent(event);

}

void QFontComboBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::dragMoveEvent(event);

}

void QFontComboBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::dragLeaveEvent(event);

}

void QFontComboBox_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::dropEvent(event);

}

bool QFontComboBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQFontComboBox*)(self) )->QFontComboBox::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QFontComboBox_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::metric(static_cast<VirtualQFontComboBox::PaintDeviceMetric>(param1));

}

void QFontComboBox_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQFontComboBox*)(self) )->QFontComboBox::initPainter(painter);

}

QPaintDevice* QFontComboBox_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::redirected(offset);

}

QPainter* QFontComboBox_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQFontComboBox*)(self) )->QFontComboBox::sharedPainter();

}

bool QFontComboBox_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQFontComboBox*)(self) )->QFontComboBox::focusNextPrevChild(next);

}

bool QFontComboBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQFontComboBox*)(self) )->QFontComboBox::eventFilter(watched, event);

}

void QFontComboBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::timerEvent(event);

}

void QFontComboBox_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::childEvent(event);

}

void QFontComboBox_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::customEvent(event);

}

void QFontComboBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::connectNotify(*signal);

}

void QFontComboBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQFontComboBox*)(self) )->QFontComboBox::disconnectNotify(*signal);

}

const QMetaObject* QFontComboBox_staticMetaObject() { return &QFontComboBox::staticMetaObject; }
void QFontComboBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QFontComboBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QFontComboBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QFontComboBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QFontComboBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QFontComboBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QFontComboBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QFontComboBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QFontComboBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQFontComboBox* self_cast = dynamic_cast<VirtualQFontComboBox*>( (QFontComboBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QFontComboBox_delete(QFontComboBox* self) {
	delete self;
}

