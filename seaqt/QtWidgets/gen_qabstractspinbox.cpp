#include <QAbstractSpinBox>
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
#include <QInputMethodEvent>
#include <QKeyEvent>
#include <QLineEdit>
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
#include <QStyleOptionSpinBox>
#include <QTabletEvent>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qabstractspinbox.h>
#include "gen_qabstractspinbox.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifdef __cplusplus
} /* extern C */
#endif

class VirtualQAbstractSpinBox final : public QAbstractSpinBox {
	struct QAbstractSpinBox_VTable* vtbl;
public:

	VirtualQAbstractSpinBox(struct QAbstractSpinBox_VTable* vtbl, QWidget* parent): QAbstractSpinBox(parent), vtbl(vtbl) {};
	VirtualQAbstractSpinBox(struct QAbstractSpinBox_VTable* vtbl): QAbstractSpinBox(), vtbl(vtbl) {};

	virtual ~VirtualQAbstractSpinBox() override { if(vtbl->destructor) vtbl->destructor(vtbl, this); }

	// Subclass to allow providing a Go implementation
	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QAbstractSpinBox::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(vtbl, this);

		return callback_return_value;
	}

	friend QMetaObject* QAbstractSpinBox_virtualbase_metaObject(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QAbstractSpinBox::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend void* QAbstractSpinBox_virtualbase_metacast(void* self, const char* param1);

	// Subclass to allow providing a Go implementation
	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QAbstractSpinBox::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(vtbl, this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_metacall(void* self, int param1, int param2, void** param3);

	// Subclass to allow providing a Go implementation
	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QAbstractSpinBox::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractSpinBox_virtualbase_sizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QAbstractSpinBox::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(vtbl, this);

		return *callback_return_value;
	}

	friend QSize* QAbstractSpinBox_virtualbase_minimumSizeHint(const void* self);

	// Subclass to allow providing a Go implementation
	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QAbstractSpinBox::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_event(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QAbstractSpinBox::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(vtbl, this, sigval1);

		return *callback_return_value;
	}

	friend QVariant* QAbstractSpinBox_virtualbase_inputMethodQuery(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QAbstractSpinBox::validate(input, pos);
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;
		int* sigval2 = &pos;

		int callback_return_value = vtbl->validate(vtbl, this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos);

	// Subclass to allow providing a Go implementation
	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QAbstractSpinBox::fixup(input);
			return;
		}

		QString input_ret = input;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray input_b = input_ret.toUtf8();
		struct miqt_string input_ms;
		input_ms.len = input_b.length();
		input_ms.data = static_cast<char*>(malloc(input_ms.len));
		memcpy(input_ms.data, input_b.data(), input_ms.len);
		struct miqt_string sigval1 = input_ms;

		vtbl->fixup(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_fixup(const void* self, struct miqt_string input);

	// Subclass to allow providing a Go implementation
	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QAbstractSpinBox::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_stepBy(void* self, int steps);

	// Subclass to allow providing a Go implementation
	virtual void clear() override {
		if (vtbl->clear == 0) {
			QAbstractSpinBox::clear();
			return;
		}


		vtbl->clear(vtbl, this);

	}

	friend void QAbstractSpinBox_virtualbase_clear(void* self);

	// Subclass to allow providing a Go implementation
	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QAbstractSpinBox::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QAbstractSpinBox::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QAbstractSpinBox::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QAbstractSpinBox::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QAbstractSpinBox::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QAbstractSpinBox::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QAbstractSpinBox::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QAbstractSpinBox::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_changeEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QAbstractSpinBox::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QAbstractSpinBox::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QAbstractSpinBox::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QAbstractSpinBox::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QAbstractSpinBox::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QAbstractSpinBox::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QAbstractSpinBox::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QAbstractSpinBox::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_showEvent(void* self, QShowEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void initStyleOption(QStyleOptionSpinBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QAbstractSpinBox::initStyleOption(option);
			return;
		}

		QStyleOptionSpinBox* sigval1 = option;

		vtbl->initStyleOption(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_initStyleOption(const void* self, QStyleOptionSpinBox* option);

	// Subclass to allow providing a Go implementation
	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QAbstractSpinBox::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(vtbl, this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_stepEnabled(const void* self);

	// Subclass to allow providing a Go implementation
	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QAbstractSpinBox::devType();
		}


		int callback_return_value = vtbl->devType(vtbl, this);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_devType(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QAbstractSpinBox::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_setVisible(void* self, bool visible);

	// Subclass to allow providing a Go implementation
	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QAbstractSpinBox::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_heightForWidth(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QAbstractSpinBox::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(vtbl, this);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_hasHeightForWidth(const void* self);

	// Subclass to allow providing a Go implementation
	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QAbstractSpinBox::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(vtbl, this);

		return callback_return_value;
	}

	friend QPaintEngine* QAbstractSpinBox_virtualbase_paintEngine(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QAbstractSpinBox::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QAbstractSpinBox::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_enterEvent(void* self, QEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QAbstractSpinBox::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_leaveEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QAbstractSpinBox::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QAbstractSpinBox::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QAbstractSpinBox::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QAbstractSpinBox::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QAbstractSpinBox::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QAbstractSpinBox::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QAbstractSpinBox::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event);

	// Subclass to allow providing a Go implementation
	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QAbstractSpinBox::nativeEvent(eventType, message, result);
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

	friend bool QAbstractSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result);

	// Subclass to allow providing a Go implementation
	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QAbstractSpinBox::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(vtbl, this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QAbstractSpinBox_virtualbase_metric(const void* self, int param1);

	// Subclass to allow providing a Go implementation
	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QAbstractSpinBox::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_initPainter(const void* self, QPainter* painter);

	// Subclass to allow providing a Go implementation
	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QAbstractSpinBox::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QAbstractSpinBox_virtualbase_redirected(const void* self, QPoint* offset);

	// Subclass to allow providing a Go implementation
	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QAbstractSpinBox::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(vtbl, this);

		return callback_return_value;
	}

	friend QPainter* QAbstractSpinBox_virtualbase_sharedPainter(const void* self);

	// Subclass to allow providing a Go implementation
	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QAbstractSpinBox::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1);

	// Subclass to allow providing a Go implementation
	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QAbstractSpinBox::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(vtbl, this, sigval1);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_focusNextPrevChild(void* self, bool next);

	// Subclass to allow providing a Go implementation
	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QAbstractSpinBox::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(vtbl, this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QAbstractSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QAbstractSpinBox::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_childEvent(void* self, QChildEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QAbstractSpinBox::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_customEvent(void* self, QEvent* event);

	// Subclass to allow providing a Go implementation
	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QAbstractSpinBox::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal);

	// Subclass to allow providing a Go implementation
	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QAbstractSpinBox::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(vtbl, this, sigval1);

	}

	friend void QAbstractSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QLineEdit* QAbstractSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self);
	friend void QAbstractSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit);
	friend void QAbstractSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self);
	friend void QAbstractSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self);
	friend bool QAbstractSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self);
	friend bool QAbstractSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self);
	friend QObject* QAbstractSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self);
	friend int QAbstractSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal);
	friend bool QAbstractSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal);
};

QAbstractSpinBox* QAbstractSpinBox_new(struct QAbstractSpinBox_VTable* vtbl, QWidget* parent) {
	return new VirtualQAbstractSpinBox(vtbl, parent);
}

QAbstractSpinBox* QAbstractSpinBox_new2(struct QAbstractSpinBox_VTable* vtbl) {
	return new VirtualQAbstractSpinBox(vtbl);
}

void QAbstractSpinBox_virtbase(QAbstractSpinBox* src, QWidget** outptr_QWidget) {
	*outptr_QWidget = static_cast<QWidget*>(src);
}

QMetaObject* QAbstractSpinBox_metaObject(const QAbstractSpinBox* self) {
	return (QMetaObject*) self->metaObject();
}

void* QAbstractSpinBox_metacast(QAbstractSpinBox* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QAbstractSpinBox_metacall(QAbstractSpinBox* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QAbstractSpinBox_tr(const char* s) {
	QString _ret = QAbstractSpinBox::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QAbstractSpinBox_buttonSymbols(const QAbstractSpinBox* self) {
	QAbstractSpinBox::ButtonSymbols _ret = self->buttonSymbols();
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_setButtonSymbols(QAbstractSpinBox* self, int bs) {
	self->setButtonSymbols(static_cast<QAbstractSpinBox::ButtonSymbols>(bs));
}

void QAbstractSpinBox_setCorrectionMode(QAbstractSpinBox* self, int cm) {
	self->setCorrectionMode(static_cast<QAbstractSpinBox::CorrectionMode>(cm));
}

int QAbstractSpinBox_correctionMode(const QAbstractSpinBox* self) {
	QAbstractSpinBox::CorrectionMode _ret = self->correctionMode();
	return static_cast<int>(_ret);
}

bool QAbstractSpinBox_hasAcceptableInput(const QAbstractSpinBox* self) {
	return self->hasAcceptableInput();
}

struct miqt_string QAbstractSpinBox_text(const QAbstractSpinBox* self) {
	QString _ret = self->text();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_specialValueText(const QAbstractSpinBox* self) {
	QString _ret = self->specialValueText();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QAbstractSpinBox_setSpecialValueText(QAbstractSpinBox* self, struct miqt_string txt) {
	QString txt_QString = QString::fromUtf8(txt.data, txt.len);
	self->setSpecialValueText(txt_QString);
}

bool QAbstractSpinBox_wrapping(const QAbstractSpinBox* self) {
	return self->wrapping();
}

void QAbstractSpinBox_setWrapping(QAbstractSpinBox* self, bool w) {
	self->setWrapping(w);
}

void QAbstractSpinBox_setReadOnly(QAbstractSpinBox* self, bool r) {
	self->setReadOnly(r);
}

bool QAbstractSpinBox_isReadOnly(const QAbstractSpinBox* self) {
	return self->isReadOnly();
}

void QAbstractSpinBox_setKeyboardTracking(QAbstractSpinBox* self, bool kt) {
	self->setKeyboardTracking(kt);
}

bool QAbstractSpinBox_keyboardTracking(const QAbstractSpinBox* self) {
	return self->keyboardTracking();
}

void QAbstractSpinBox_setAlignment(QAbstractSpinBox* self, int flag) {
	self->setAlignment(static_cast<Qt::Alignment>(flag));
}

int QAbstractSpinBox_alignment(const QAbstractSpinBox* self) {
	Qt::Alignment _ret = self->alignment();
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_setFrame(QAbstractSpinBox* self, bool frame) {
	self->setFrame(frame);
}

bool QAbstractSpinBox_hasFrame(const QAbstractSpinBox* self) {
	return self->hasFrame();
}

void QAbstractSpinBox_setAccelerated(QAbstractSpinBox* self, bool on) {
	self->setAccelerated(on);
}

bool QAbstractSpinBox_isAccelerated(const QAbstractSpinBox* self) {
	return self->isAccelerated();
}

void QAbstractSpinBox_setGroupSeparatorShown(QAbstractSpinBox* self, bool shown) {
	self->setGroupSeparatorShown(shown);
}

bool QAbstractSpinBox_isGroupSeparatorShown(const QAbstractSpinBox* self) {
	return self->isGroupSeparatorShown();
}

QSize* QAbstractSpinBox_sizeHint(const QAbstractSpinBox* self) {
	return new QSize(self->sizeHint());
}

QSize* QAbstractSpinBox_minimumSizeHint(const QAbstractSpinBox* self) {
	return new QSize(self->minimumSizeHint());
}

void QAbstractSpinBox_interpretText(QAbstractSpinBox* self) {
	self->interpretText();
}

bool QAbstractSpinBox_event(QAbstractSpinBox* self, QEvent* event) {
	return self->event(event);
}

QVariant* QAbstractSpinBox_inputMethodQuery(const QAbstractSpinBox* self, int param1) {
	return new QVariant(self->inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

int QAbstractSpinBox_validate(const QAbstractSpinBox* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	QValidator::State _ret = self->validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QAbstractSpinBox_fixup(const QAbstractSpinBox* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);
	self->fixup(input_QString);
}

void QAbstractSpinBox_stepBy(QAbstractSpinBox* self, int steps) {
	self->stepBy(static_cast<int>(steps));
}

void QAbstractSpinBox_stepUp(QAbstractSpinBox* self) {
	self->stepUp();
}

void QAbstractSpinBox_stepDown(QAbstractSpinBox* self) {
	self->stepDown();
}

void QAbstractSpinBox_selectAll(QAbstractSpinBox* self) {
	self->selectAll();
}

void QAbstractSpinBox_clear(QAbstractSpinBox* self) {
	self->clear();
}

void QAbstractSpinBox_editingFinished(QAbstractSpinBox* self) {
	self->editingFinished();
}

void QAbstractSpinBox_connect_editingFinished(QAbstractSpinBox* self, intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t);
		void operator()() {
			callback(slot);
		}
	};
	VirtualQAbstractSpinBox::connect(self, static_cast<void (QAbstractSpinBox::*)()>(&QAbstractSpinBox::editingFinished), self, local_caller{slot, callback, release});
}

struct miqt_string QAbstractSpinBox_tr2(const char* s, const char* c) {
	QString _ret = QAbstractSpinBox::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QAbstractSpinBox_tr3(const char* s, const char* c, int n) {
	QString _ret = QAbstractSpinBox::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QAbstractSpinBox_virtualbase_metaObject(const void* self) {

	return (QMetaObject*) ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::metaObject();

}

void* QAbstractSpinBox_virtualbase_metacast(void* self, const char* param1) {

	return ( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::qt_metacast(param1);

}

int QAbstractSpinBox_virtualbase_metacall(void* self, int param1, int param2, void** param3) {

	return ( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);

}

QSize* QAbstractSpinBox_virtualbase_sizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::sizeHint());

}

QSize* QAbstractSpinBox_virtualbase_minimumSizeHint(const void* self) {

	return new QSize(( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::minimumSizeHint());

}

bool QAbstractSpinBox_virtualbase_event(void* self, QEvent* event) {

	return ( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::event(event);

}

QVariant* QAbstractSpinBox_virtualbase_inputMethodQuery(const void* self, int param1) {

	return new QVariant(( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));

}

int QAbstractSpinBox_virtualbase_validate(const void* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);

}

void QAbstractSpinBox_virtualbase_fixup(const void* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::fixup(input_QString);

}

void QAbstractSpinBox_virtualbase_stepBy(void* self, int steps) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::stepBy(static_cast<int>(steps));

}

void QAbstractSpinBox_virtualbase_clear(void* self) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::clear();

}

void QAbstractSpinBox_virtualbase_resizeEvent(void* self, QResizeEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::resizeEvent(event);

}

void QAbstractSpinBox_virtualbase_keyPressEvent(void* self, QKeyEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::keyPressEvent(event);

}

void QAbstractSpinBox_virtualbase_keyReleaseEvent(void* self, QKeyEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::keyReleaseEvent(event);

}

void QAbstractSpinBox_virtualbase_wheelEvent(void* self, QWheelEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::wheelEvent(event);

}

void QAbstractSpinBox_virtualbase_focusInEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::focusInEvent(event);

}

void QAbstractSpinBox_virtualbase_focusOutEvent(void* self, QFocusEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::focusOutEvent(event);

}

void QAbstractSpinBox_virtualbase_contextMenuEvent(void* self, QContextMenuEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::contextMenuEvent(event);

}

void QAbstractSpinBox_virtualbase_changeEvent(void* self, QEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::changeEvent(event);

}

void QAbstractSpinBox_virtualbase_closeEvent(void* self, QCloseEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::closeEvent(event);

}

void QAbstractSpinBox_virtualbase_hideEvent(void* self, QHideEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::hideEvent(event);

}

void QAbstractSpinBox_virtualbase_mousePressEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::mousePressEvent(event);

}

void QAbstractSpinBox_virtualbase_mouseReleaseEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::mouseReleaseEvent(event);

}

void QAbstractSpinBox_virtualbase_mouseMoveEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::mouseMoveEvent(event);

}

void QAbstractSpinBox_virtualbase_timerEvent(void* self, QTimerEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::timerEvent(event);

}

void QAbstractSpinBox_virtualbase_paintEvent(void* self, QPaintEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::paintEvent(event);

}

void QAbstractSpinBox_virtualbase_showEvent(void* self, QShowEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::showEvent(event);

}

void QAbstractSpinBox_virtualbase_initStyleOption(const void* self, QStyleOptionSpinBox* option) {

	( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::initStyleOption(option);

}

int QAbstractSpinBox_virtualbase_stepEnabled(const void* self) {

	VirtualQAbstractSpinBox::StepEnabled _ret = ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::stepEnabled();
	return static_cast<int>(_ret);

}

int QAbstractSpinBox_virtualbase_devType(const void* self) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::devType();

}

void QAbstractSpinBox_virtualbase_setVisible(void* self, bool visible) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::setVisible(visible);

}

int QAbstractSpinBox_virtualbase_heightForWidth(const void* self, int param1) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::heightForWidth(static_cast<int>(param1));

}

bool QAbstractSpinBox_virtualbase_hasHeightForWidth(const void* self) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::hasHeightForWidth();

}

QPaintEngine* QAbstractSpinBox_virtualbase_paintEngine(const void* self) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::paintEngine();

}

void QAbstractSpinBox_virtualbase_mouseDoubleClickEvent(void* self, QMouseEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::mouseDoubleClickEvent(event);

}

void QAbstractSpinBox_virtualbase_enterEvent(void* self, QEnterEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::enterEvent(event);

}

void QAbstractSpinBox_virtualbase_leaveEvent(void* self, QEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::leaveEvent(event);

}

void QAbstractSpinBox_virtualbase_moveEvent(void* self, QMoveEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::moveEvent(event);

}

void QAbstractSpinBox_virtualbase_tabletEvent(void* self, QTabletEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::tabletEvent(event);

}

void QAbstractSpinBox_virtualbase_actionEvent(void* self, QActionEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::actionEvent(event);

}

void QAbstractSpinBox_virtualbase_dragEnterEvent(void* self, QDragEnterEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::dragEnterEvent(event);

}

void QAbstractSpinBox_virtualbase_dragMoveEvent(void* self, QDragMoveEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::dragMoveEvent(event);

}

void QAbstractSpinBox_virtualbase_dragLeaveEvent(void* self, QDragLeaveEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::dragLeaveEvent(event);

}

void QAbstractSpinBox_virtualbase_dropEvent(void* self, QDropEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::dropEvent(event);

}

bool QAbstractSpinBox_virtualbase_nativeEvent(void* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return ( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));

}

int QAbstractSpinBox_virtualbase_metric(const void* self, int param1) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::metric(static_cast<VirtualQAbstractSpinBox::PaintDeviceMetric>(param1));

}

void QAbstractSpinBox_virtualbase_initPainter(const void* self, QPainter* painter) {

	( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::initPainter(painter);

}

QPaintDevice* QAbstractSpinBox_virtualbase_redirected(const void* self, QPoint* offset) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::redirected(offset);

}

QPainter* QAbstractSpinBox_virtualbase_sharedPainter(const void* self) {

	return ( (const VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::sharedPainter();

}

void QAbstractSpinBox_virtualbase_inputMethodEvent(void* self, QInputMethodEvent* param1) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::inputMethodEvent(param1);

}

bool QAbstractSpinBox_virtualbase_focusNextPrevChild(void* self, bool next) {

	return ( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::focusNextPrevChild(next);

}

bool QAbstractSpinBox_virtualbase_eventFilter(void* self, QObject* watched, QEvent* event) {

	return ( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::eventFilter(watched, event);

}

void QAbstractSpinBox_virtualbase_childEvent(void* self, QChildEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::childEvent(event);

}

void QAbstractSpinBox_virtualbase_customEvent(void* self, QEvent* event) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::customEvent(event);

}

void QAbstractSpinBox_virtualbase_connectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::connectNotify(*signal);

}

void QAbstractSpinBox_virtualbase_disconnectNotify(void* self, QMetaMethod* signal) {

	( (VirtualQAbstractSpinBox*)(self) )->QAbstractSpinBox::disconnectNotify(*signal);

}

const QMetaObject* QAbstractSpinBox_staticMetaObject() { return &QAbstractSpinBox::staticMetaObject; }
QLineEdit* QAbstractSpinBox_protectedbase_lineEdit(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->lineEdit();

}

void QAbstractSpinBox_protectedbase_setLineEdit(bool* _dynamic_cast_ok, void* self, QLineEdit* edit) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->setLineEdit(edit);

}

void QAbstractSpinBox_protectedbase_updateMicroFocus(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->updateMicroFocus();

}

void QAbstractSpinBox_protectedbase_create(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->create();

}

void QAbstractSpinBox_protectedbase_destroy(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return ;
	}
	
	*_dynamic_cast_ok = true;
	
	self_cast->destroy();

}

bool QAbstractSpinBox_protectedbase_focusNextChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusNextChild();

}

bool QAbstractSpinBox_protectedbase_focusPreviousChild(bool* _dynamic_cast_ok, void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->focusPreviousChild();

}

QObject* QAbstractSpinBox_protectedbase_sender(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return nullptr;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->sender();

}

int QAbstractSpinBox_protectedbase_senderSignalIndex(bool* _dynamic_cast_ok, const void* self) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->senderSignalIndex();

}

int QAbstractSpinBox_protectedbase_receivers(bool* _dynamic_cast_ok, const void* self, const char* signal) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return 0;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->receivers(signal);

}

bool QAbstractSpinBox_protectedbase_isSignalConnected(bool* _dynamic_cast_ok, const void* self, QMetaMethod* signal) {
	VirtualQAbstractSpinBox* self_cast = dynamic_cast<VirtualQAbstractSpinBox*>( (QAbstractSpinBox*)(self) );
	if (self_cast == nullptr) {
		*_dynamic_cast_ok = false;
		return false;
	}
	
	*_dynamic_cast_ok = true;
	
	return self_cast->isSignalConnected(*signal);

}

void QAbstractSpinBox_delete(QAbstractSpinBox* self) {
	delete self;
}

