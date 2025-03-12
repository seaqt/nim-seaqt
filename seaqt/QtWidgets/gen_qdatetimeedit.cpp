#include <QAbstractSpinBox>
#include <QActionEvent>
#include <QByteArray>
#include <QCalendar>
#include <QCalendarWidget>
#include <QChildEvent>
#include <QCloseEvent>
#include <QContextMenuEvent>
#include <QDate>
#include <QDateEdit>
#include <QDateTime>
#include <QDateTimeEdit>
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
#include <QTime>
#include <QTimeEdit>
#include <QTimerEvent>
#include <QVariant>
#include <QWheelEvent>
#include <QWidget>
#include <qdatetimeedit.h>
#include "gen_qdatetimeedit.h"
class VirtualQDateTimeEdit final : public QDateTimeEdit {
	const QDateTimeEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QDateTimeEdit_VTable* QDateTimeEdit_vtbl(const VirtualQDateTimeEdit* self);
	friend void* QDateTimeEdit_vdata(const VirtualQDateTimeEdit* self);
	friend void QDateTimeEdit_setVdata(VirtualQDateTimeEdit* self, void* vdata);

	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, QWidget* parent): QDateTimeEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata): QDateTimeEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, const QDateTime& dt): QDateTimeEdit(dt), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, QDate d): QDateTimeEdit(d), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, QTime t): QDateTimeEdit(t), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, const QDateTime& dt, QWidget* parent): QDateTimeEdit(dt, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, QDate d, QWidget* parent): QDateTimeEdit(d, parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateTimeEdit(const QDateTimeEdit_VTable* vtbl, void* vdata, QTime t, QWidget* parent): QDateTimeEdit(t, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDateTimeEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDateTimeEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDateTimeEdit_virtualbase_metaObject(const VirtualQDateTimeEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDateTimeEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDateTimeEdit_virtualbase_metacast(VirtualQDateTimeEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDateTimeEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_metacall(VirtualQDateTimeEdit* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDateTimeEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDateTimeEdit_virtualbase_sizeHint(const VirtualQDateTimeEdit* self);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QDateTimeEdit::clear();
			return;
		}


		vtbl->clear(this);

	}

	friend void QDateTimeEdit_virtualbase_clear(VirtualQDateTimeEdit* self);

	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QDateTimeEdit::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_stepBy(VirtualQDateTimeEdit* self, int steps);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDateTimeEdit::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_event(VirtualQDateTimeEdit* self, QEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDateTimeEdit::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_keyPressEvent(VirtualQDateTimeEdit* self, QKeyEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDateTimeEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_wheelEvent(VirtualQDateTimeEdit* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDateTimeEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_focusInEvent(VirtualQDateTimeEdit* self, QFocusEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDateTimeEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_focusNextPrevChild(VirtualQDateTimeEdit* self, bool next);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QDateTimeEdit::validate(input, pos);
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

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_validate(const VirtualQDateTimeEdit* self, struct miqt_string input, int* pos);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QDateTimeEdit::fixup(input);
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

		vtbl->fixup(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_fixup(const VirtualQDateTimeEdit* self, struct miqt_string input);

	virtual QDateTime dateTimeFromText(const QString& text) const override {
		if (vtbl->dateTimeFromText == 0) {
			return QDateTimeEdit::dateTimeFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		QDateTime* callback_return_value = vtbl->dateTimeFromText(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QDateTime* QDateTimeEdit_virtualbase_dateTimeFromText(const VirtualQDateTimeEdit* self, struct miqt_string text);

	virtual QString textFromDateTime(const QDateTime& dt) const override {
		if (vtbl->textFromDateTime == 0) {
			return QDateTimeEdit::textFromDateTime(dt);
		}

		const QDateTime& dt_ret = dt;
		// Cast returned reference into pointer
		QDateTime* sigval1 = const_cast<QDateTime*>(&dt_ret);

		struct miqt_string callback_return_value = vtbl->textFromDateTime(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QDateTimeEdit_virtualbase_textFromDateTime(const VirtualQDateTimeEdit* self, QDateTime* dt);

	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QDateTimeEdit::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_stepEnabled(const VirtualQDateTimeEdit* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDateTimeEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mousePressEvent(VirtualQDateTimeEdit* self, QMouseEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDateTimeEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_paintEvent(VirtualQDateTimeEdit* self, QPaintEvent* event);

	virtual void initStyleOption(QStyleOptionSpinBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QDateTimeEdit::initStyleOption(option);
			return;
		}

		QStyleOptionSpinBox* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_initStyleOption(const VirtualQDateTimeEdit* self, QStyleOptionSpinBox* option);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDateTimeEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDateTimeEdit_virtualbase_minimumSizeHint(const VirtualQDateTimeEdit* self);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDateTimeEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDateTimeEdit_virtualbase_inputMethodQuery(const VirtualQDateTimeEdit* self, int param1);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDateTimeEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_resizeEvent(VirtualQDateTimeEdit* self, QResizeEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDateTimeEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_keyReleaseEvent(VirtualQDateTimeEdit* self, QKeyEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDateTimeEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_focusOutEvent(VirtualQDateTimeEdit* self, QFocusEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDateTimeEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_contextMenuEvent(VirtualQDateTimeEdit* self, QContextMenuEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDateTimeEdit::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_changeEvent(VirtualQDateTimeEdit* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDateTimeEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_closeEvent(VirtualQDateTimeEdit* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDateTimeEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_hideEvent(VirtualQDateTimeEdit* self, QHideEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDateTimeEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mouseReleaseEvent(VirtualQDateTimeEdit* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDateTimeEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mouseMoveEvent(VirtualQDateTimeEdit* self, QMouseEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDateTimeEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_timerEvent(VirtualQDateTimeEdit* self, QTimerEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDateTimeEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_showEvent(VirtualQDateTimeEdit* self, QShowEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDateTimeEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_devType(const VirtualQDateTimeEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDateTimeEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_setVisible(VirtualQDateTimeEdit* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDateTimeEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_heightForWidth(const VirtualQDateTimeEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDateTimeEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_hasHeightForWidth(const VirtualQDateTimeEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDateTimeEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDateTimeEdit_virtualbase_paintEngine(const VirtualQDateTimeEdit* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDateTimeEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_mouseDoubleClickEvent(VirtualQDateTimeEdit* self, QMouseEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDateTimeEdit::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_enterEvent(VirtualQDateTimeEdit* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDateTimeEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_leaveEvent(VirtualQDateTimeEdit* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDateTimeEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_moveEvent(VirtualQDateTimeEdit* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDateTimeEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_tabletEvent(VirtualQDateTimeEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDateTimeEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_actionEvent(VirtualQDateTimeEdit* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDateTimeEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dragEnterEvent(VirtualQDateTimeEdit* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDateTimeEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dragMoveEvent(VirtualQDateTimeEdit* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDateTimeEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dragLeaveEvent(VirtualQDateTimeEdit* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDateTimeEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_dropEvent(VirtualQDateTimeEdit* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDateTimeEdit::nativeEvent(eventType, message, result);
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

	friend bool QDateTimeEdit_virtualbase_nativeEvent(VirtualQDateTimeEdit* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDateTimeEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateTimeEdit_virtualbase_metric(const VirtualQDateTimeEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDateTimeEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_initPainter(const VirtualQDateTimeEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDateTimeEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDateTimeEdit_virtualbase_redirected(const VirtualQDateTimeEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDateTimeEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDateTimeEdit_virtualbase_sharedPainter(const VirtualQDateTimeEdit* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDateTimeEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_inputMethodEvent(VirtualQDateTimeEdit* self, QInputMethodEvent* param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDateTimeEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDateTimeEdit_virtualbase_eventFilter(VirtualQDateTimeEdit* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDateTimeEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_childEvent(VirtualQDateTimeEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDateTimeEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_customEvent(VirtualQDateTimeEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDateTimeEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_connectNotify(VirtualQDateTimeEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDateTimeEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDateTimeEdit_virtualbase_disconnectNotify(VirtualQDateTimeEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QLineEdit* QDateTimeEdit_protectedbase_lineEdit(const VirtualQDateTimeEdit* self);
	friend void QDateTimeEdit_protectedbase_setLineEdit(VirtualQDateTimeEdit* self, QLineEdit* edit);
	friend void QDateTimeEdit_protectedbase_updateMicroFocus(VirtualQDateTimeEdit* self);
	friend void QDateTimeEdit_protectedbase_create(VirtualQDateTimeEdit* self);
	friend void QDateTimeEdit_protectedbase_destroy(VirtualQDateTimeEdit* self);
	friend bool QDateTimeEdit_protectedbase_focusNextChild(VirtualQDateTimeEdit* self);
	friend bool QDateTimeEdit_protectedbase_focusPreviousChild(VirtualQDateTimeEdit* self);
	friend QObject* QDateTimeEdit_protectedbase_sender(const VirtualQDateTimeEdit* self);
	friend int QDateTimeEdit_protectedbase_senderSignalIndex(const VirtualQDateTimeEdit* self);
	friend int QDateTimeEdit_protectedbase_receivers(const VirtualQDateTimeEdit* self, const char* signal);
	friend bool QDateTimeEdit_protectedbase_isSignalConnected(const VirtualQDateTimeEdit* self, QMetaMethod* signal);
};

VirtualQDateTimeEdit* QDateTimeEdit_new(const QDateTimeEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDateTimeEdit(vtbl, vdata, parent);
}

VirtualQDateTimeEdit* QDateTimeEdit_new2(const QDateTimeEdit_VTable* vtbl, void* vdata) {
	return new VirtualQDateTimeEdit(vtbl, vdata);
}

VirtualQDateTimeEdit* QDateTimeEdit_new3(const QDateTimeEdit_VTable* vtbl, void* vdata, QDateTime* dt) {
	return new VirtualQDateTimeEdit(vtbl, vdata, *dt);
}

VirtualQDateTimeEdit* QDateTimeEdit_new4(const QDateTimeEdit_VTable* vtbl, void* vdata, QDate* d) {
	return new VirtualQDateTimeEdit(vtbl, vdata, *d);
}

VirtualQDateTimeEdit* QDateTimeEdit_new5(const QDateTimeEdit_VTable* vtbl, void* vdata, QTime* t) {
	return new VirtualQDateTimeEdit(vtbl, vdata, *t);
}

VirtualQDateTimeEdit* QDateTimeEdit_new6(const QDateTimeEdit_VTable* vtbl, void* vdata, QDateTime* dt, QWidget* parent) {
	return new VirtualQDateTimeEdit(vtbl, vdata, *dt, parent);
}

VirtualQDateTimeEdit* QDateTimeEdit_new7(const QDateTimeEdit_VTable* vtbl, void* vdata, QDate* d, QWidget* parent) {
	return new VirtualQDateTimeEdit(vtbl, vdata, *d, parent);
}

VirtualQDateTimeEdit* QDateTimeEdit_new8(const QDateTimeEdit_VTable* vtbl, void* vdata, QTime* t, QWidget* parent) {
	return new VirtualQDateTimeEdit(vtbl, vdata, *t, parent);
}

void QDateTimeEdit_virtbase(QDateTimeEdit* src, QAbstractSpinBox** outptr_QAbstractSpinBox) {
	*outptr_QAbstractSpinBox = static_cast<QAbstractSpinBox*>(src);
}

QMetaObject* QDateTimeEdit_metaObject(const QDateTimeEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDateTimeEdit_metacast(QDateTimeEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDateTimeEdit_metacall(QDateTimeEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDateTimeEdit_tr(const char* s) {
	QString _ret = QDateTimeEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QDateTime* QDateTimeEdit_dateTime(const QDateTimeEdit* self) {
	return new QDateTime(self->dateTime());
}

QDate* QDateTimeEdit_date(const QDateTimeEdit* self) {
	return new QDate(self->date());
}

QTime* QDateTimeEdit_time(const QDateTimeEdit* self) {
	return new QTime(self->time());
}

QCalendar* QDateTimeEdit_calendar(const QDateTimeEdit* self) {
	return new QCalendar(self->calendar());
}

void QDateTimeEdit_setCalendar(QDateTimeEdit* self, QCalendar* calendar) {
	self->setCalendar(*calendar);
}

QDateTime* QDateTimeEdit_minimumDateTime(const QDateTimeEdit* self) {
	return new QDateTime(self->minimumDateTime());
}

void QDateTimeEdit_clearMinimumDateTime(QDateTimeEdit* self) {
	self->clearMinimumDateTime();
}

void QDateTimeEdit_setMinimumDateTime(QDateTimeEdit* self, QDateTime* dt) {
	self->setMinimumDateTime(*dt);
}

QDateTime* QDateTimeEdit_maximumDateTime(const QDateTimeEdit* self) {
	return new QDateTime(self->maximumDateTime());
}

void QDateTimeEdit_clearMaximumDateTime(QDateTimeEdit* self) {
	self->clearMaximumDateTime();
}

void QDateTimeEdit_setMaximumDateTime(QDateTimeEdit* self, QDateTime* dt) {
	self->setMaximumDateTime(*dt);
}

void QDateTimeEdit_setDateTimeRange(QDateTimeEdit* self, QDateTime* min, QDateTime* max) {
	self->setDateTimeRange(*min, *max);
}

QDate* QDateTimeEdit_minimumDate(const QDateTimeEdit* self) {
	return new QDate(self->minimumDate());
}

void QDateTimeEdit_setMinimumDate(QDateTimeEdit* self, QDate* min) {
	self->setMinimumDate(*min);
}

void QDateTimeEdit_clearMinimumDate(QDateTimeEdit* self) {
	self->clearMinimumDate();
}

QDate* QDateTimeEdit_maximumDate(const QDateTimeEdit* self) {
	return new QDate(self->maximumDate());
}

void QDateTimeEdit_setMaximumDate(QDateTimeEdit* self, QDate* max) {
	self->setMaximumDate(*max);
}

void QDateTimeEdit_clearMaximumDate(QDateTimeEdit* self) {
	self->clearMaximumDate();
}

void QDateTimeEdit_setDateRange(QDateTimeEdit* self, QDate* min, QDate* max) {
	self->setDateRange(*min, *max);
}

QTime* QDateTimeEdit_minimumTime(const QDateTimeEdit* self) {
	return new QTime(self->minimumTime());
}

void QDateTimeEdit_setMinimumTime(QDateTimeEdit* self, QTime* min) {
	self->setMinimumTime(*min);
}

void QDateTimeEdit_clearMinimumTime(QDateTimeEdit* self) {
	self->clearMinimumTime();
}

QTime* QDateTimeEdit_maximumTime(const QDateTimeEdit* self) {
	return new QTime(self->maximumTime());
}

void QDateTimeEdit_setMaximumTime(QDateTimeEdit* self, QTime* max) {
	self->setMaximumTime(*max);
}

void QDateTimeEdit_clearMaximumTime(QDateTimeEdit* self) {
	self->clearMaximumTime();
}

void QDateTimeEdit_setTimeRange(QDateTimeEdit* self, QTime* min, QTime* max) {
	self->setTimeRange(*min, *max);
}

int QDateTimeEdit_displayedSections(const QDateTimeEdit* self) {
	QDateTimeEdit::Sections _ret = self->displayedSections();
	return static_cast<int>(_ret);
}

int QDateTimeEdit_currentSection(const QDateTimeEdit* self) {
	QDateTimeEdit::Section _ret = self->currentSection();
	return static_cast<int>(_ret);
}

int QDateTimeEdit_sectionAt(const QDateTimeEdit* self, int index) {
	QDateTimeEdit::Section _ret = self->sectionAt(static_cast<int>(index));
	return static_cast<int>(_ret);
}

void QDateTimeEdit_setCurrentSection(QDateTimeEdit* self, int section) {
	self->setCurrentSection(static_cast<QDateTimeEdit::Section>(section));
}

int QDateTimeEdit_currentSectionIndex(const QDateTimeEdit* self) {
	return self->currentSectionIndex();
}

void QDateTimeEdit_setCurrentSectionIndex(QDateTimeEdit* self, int index) {
	self->setCurrentSectionIndex(static_cast<int>(index));
}

QCalendarWidget* QDateTimeEdit_calendarWidget(const QDateTimeEdit* self) {
	return self->calendarWidget();
}

void QDateTimeEdit_setCalendarWidget(QDateTimeEdit* self, QCalendarWidget* calendarWidget) {
	self->setCalendarWidget(calendarWidget);
}

int QDateTimeEdit_sectionCount(const QDateTimeEdit* self) {
	return self->sectionCount();
}

void QDateTimeEdit_setSelectedSection(QDateTimeEdit* self, int section) {
	self->setSelectedSection(static_cast<QDateTimeEdit::Section>(section));
}

struct miqt_string QDateTimeEdit_sectionText(const QDateTimeEdit* self, int section) {
	QString _ret = self->sectionText(static_cast<QDateTimeEdit::Section>(section));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_displayFormat(const QDateTimeEdit* self) {
	QString _ret = self->displayFormat();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDateTimeEdit_setDisplayFormat(QDateTimeEdit* self, struct miqt_string format) {
	QString format_QString = QString::fromUtf8(format.data, format.len);
	self->setDisplayFormat(format_QString);
}

bool QDateTimeEdit_calendarPopup(const QDateTimeEdit* self) {
	return self->calendarPopup();
}

void QDateTimeEdit_setCalendarPopup(QDateTimeEdit* self, bool enable) {
	self->setCalendarPopup(enable);
}

int QDateTimeEdit_timeSpec(const QDateTimeEdit* self) {
	Qt::TimeSpec _ret = self->timeSpec();
	return static_cast<int>(_ret);
}

void QDateTimeEdit_setTimeSpec(QDateTimeEdit* self, int spec) {
	self->setTimeSpec(static_cast<Qt::TimeSpec>(spec));
}

QSize* QDateTimeEdit_sizeHint(const QDateTimeEdit* self) {
	return new QSize(self->sizeHint());
}

void QDateTimeEdit_clear(QDateTimeEdit* self) {
	self->clear();
}

void QDateTimeEdit_stepBy(QDateTimeEdit* self, int steps) {
	self->stepBy(static_cast<int>(steps));
}

bool QDateTimeEdit_event(QDateTimeEdit* self, QEvent* event) {
	return self->event(event);
}

void QDateTimeEdit_dateTimeChanged(QDateTimeEdit* self, QDateTime* dateTime) {
	self->dateTimeChanged(*dateTime);
}

void QDateTimeEdit_connect_dateTimeChanged(VirtualQDateTimeEdit* self, intptr_t slot, void (*callback)(intptr_t, QDateTime*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDateTime*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDateTime*);
		void operator()(const QDateTime& dateTime) {
			const QDateTime& dateTime_ret = dateTime;
			// Cast returned reference into pointer
			QDateTime* sigval1 = const_cast<QDateTime*>(&dateTime_ret);
			callback(slot, sigval1);
		}
	};
	VirtualQDateTimeEdit::connect(self, static_cast<void (QDateTimeEdit::*)(const QDateTime&)>(&QDateTimeEdit::dateTimeChanged), self, local_caller{slot, callback, release});
}

void QDateTimeEdit_timeChanged(QDateTimeEdit* self, QTime* time) {
	self->timeChanged(*time);
}

void QDateTimeEdit_connect_timeChanged(VirtualQDateTimeEdit* self, intptr_t slot, void (*callback)(intptr_t, QTime*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTime*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTime*);
		void operator()(QTime time) {
			QTime* sigval1 = new QTime(time);
			callback(slot, sigval1);
		}
	};
	VirtualQDateTimeEdit::connect(self, static_cast<void (QDateTimeEdit::*)(QTime)>(&QDateTimeEdit::timeChanged), self, local_caller{slot, callback, release});
}

void QDateTimeEdit_dateChanged(QDateTimeEdit* self, QDate* date) {
	self->dateChanged(*date);
}

void QDateTimeEdit_connect_dateChanged(VirtualQDateTimeEdit* self, intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDate*);
		void operator()(QDate date) {
			QDate* sigval1 = new QDate(date);
			callback(slot, sigval1);
		}
	};
	VirtualQDateTimeEdit::connect(self, static_cast<void (QDateTimeEdit::*)(QDate)>(&QDateTimeEdit::dateChanged), self, local_caller{slot, callback, release});
}

void QDateTimeEdit_setDateTime(QDateTimeEdit* self, QDateTime* dateTime) {
	self->setDateTime(*dateTime);
}

void QDateTimeEdit_setDate(QDateTimeEdit* self, QDate* date) {
	self->setDate(*date);
}

void QDateTimeEdit_setTime(QDateTimeEdit* self, QTime* time) {
	self->setTime(*time);
}

struct miqt_string QDateTimeEdit_tr2(const char* s, const char* c) {
	QString _ret = QDateTimeEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateTimeEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QDateTimeEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDateTimeEdit_virtualbase_metaObject(const VirtualQDateTimeEdit* self) {

	return (QMetaObject*) self->QDateTimeEdit::metaObject();
}

void* QDateTimeEdit_virtualbase_metacast(VirtualQDateTimeEdit* self, const char* param1) {

	return self->QDateTimeEdit::qt_metacast(param1);
}

int QDateTimeEdit_virtualbase_metacall(VirtualQDateTimeEdit* self, int param1, int param2, void** param3) {

	return self->QDateTimeEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QDateTimeEdit_virtualbase_sizeHint(const VirtualQDateTimeEdit* self) {

	return new QSize(self->QDateTimeEdit::sizeHint());
}

void QDateTimeEdit_virtualbase_clear(VirtualQDateTimeEdit* self) {

	self->QDateTimeEdit::clear();
}

void QDateTimeEdit_virtualbase_stepBy(VirtualQDateTimeEdit* self, int steps) {

	self->QDateTimeEdit::stepBy(static_cast<int>(steps));
}

bool QDateTimeEdit_virtualbase_event(VirtualQDateTimeEdit* self, QEvent* event) {

	return self->QDateTimeEdit::event(event);
}

void QDateTimeEdit_virtualbase_keyPressEvent(VirtualQDateTimeEdit* self, QKeyEvent* event) {

	self->QDateTimeEdit::keyPressEvent(event);
}

void QDateTimeEdit_virtualbase_wheelEvent(VirtualQDateTimeEdit* self, QWheelEvent* event) {

	self->QDateTimeEdit::wheelEvent(event);
}

void QDateTimeEdit_virtualbase_focusInEvent(VirtualQDateTimeEdit* self, QFocusEvent* event) {

	self->QDateTimeEdit::focusInEvent(event);
}

bool QDateTimeEdit_virtualbase_focusNextPrevChild(VirtualQDateTimeEdit* self, bool next) {

	return self->QDateTimeEdit::focusNextPrevChild(next);
}

int QDateTimeEdit_virtualbase_validate(const VirtualQDateTimeEdit* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = self->QDateTimeEdit::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QDateTimeEdit_virtualbase_fixup(const VirtualQDateTimeEdit* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QDateTimeEdit::fixup(input_QString);
}

QDateTime* QDateTimeEdit_virtualbase_dateTimeFromText(const VirtualQDateTimeEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QDateTime(self->QDateTimeEdit::dateTimeFromText(text_QString));
}

struct miqt_string QDateTimeEdit_virtualbase_textFromDateTime(const VirtualQDateTimeEdit* self, QDateTime* dt) {

	QString _ret = self->QDateTimeEdit::textFromDateTime(*dt);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDateTimeEdit_virtualbase_stepEnabled(const VirtualQDateTimeEdit* self) {

	VirtualQDateTimeEdit::StepEnabled _ret = self->QDateTimeEdit::stepEnabled();
	return static_cast<int>(_ret);
}

void QDateTimeEdit_virtualbase_mousePressEvent(VirtualQDateTimeEdit* self, QMouseEvent* event) {

	self->QDateTimeEdit::mousePressEvent(event);
}

void QDateTimeEdit_virtualbase_paintEvent(VirtualQDateTimeEdit* self, QPaintEvent* event) {

	self->QDateTimeEdit::paintEvent(event);
}

void QDateTimeEdit_virtualbase_initStyleOption(const VirtualQDateTimeEdit* self, QStyleOptionSpinBox* option) {

	self->QDateTimeEdit::initStyleOption(option);
}

QSize* QDateTimeEdit_virtualbase_minimumSizeHint(const VirtualQDateTimeEdit* self) {

	return new QSize(self->QDateTimeEdit::minimumSizeHint());
}

QVariant* QDateTimeEdit_virtualbase_inputMethodQuery(const VirtualQDateTimeEdit* self, int param1) {

	return new QVariant(self->QDateTimeEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QDateTimeEdit_virtualbase_resizeEvent(VirtualQDateTimeEdit* self, QResizeEvent* event) {

	self->QDateTimeEdit::resizeEvent(event);
}

void QDateTimeEdit_virtualbase_keyReleaseEvent(VirtualQDateTimeEdit* self, QKeyEvent* event) {

	self->QDateTimeEdit::keyReleaseEvent(event);
}

void QDateTimeEdit_virtualbase_focusOutEvent(VirtualQDateTimeEdit* self, QFocusEvent* event) {

	self->QDateTimeEdit::focusOutEvent(event);
}

void QDateTimeEdit_virtualbase_contextMenuEvent(VirtualQDateTimeEdit* self, QContextMenuEvent* event) {

	self->QDateTimeEdit::contextMenuEvent(event);
}

void QDateTimeEdit_virtualbase_changeEvent(VirtualQDateTimeEdit* self, QEvent* event) {

	self->QDateTimeEdit::changeEvent(event);
}

void QDateTimeEdit_virtualbase_closeEvent(VirtualQDateTimeEdit* self, QCloseEvent* event) {

	self->QDateTimeEdit::closeEvent(event);
}

void QDateTimeEdit_virtualbase_hideEvent(VirtualQDateTimeEdit* self, QHideEvent* event) {

	self->QDateTimeEdit::hideEvent(event);
}

void QDateTimeEdit_virtualbase_mouseReleaseEvent(VirtualQDateTimeEdit* self, QMouseEvent* event) {

	self->QDateTimeEdit::mouseReleaseEvent(event);
}

void QDateTimeEdit_virtualbase_mouseMoveEvent(VirtualQDateTimeEdit* self, QMouseEvent* event) {

	self->QDateTimeEdit::mouseMoveEvent(event);
}

void QDateTimeEdit_virtualbase_timerEvent(VirtualQDateTimeEdit* self, QTimerEvent* event) {

	self->QDateTimeEdit::timerEvent(event);
}

void QDateTimeEdit_virtualbase_showEvent(VirtualQDateTimeEdit* self, QShowEvent* event) {

	self->QDateTimeEdit::showEvent(event);
}

int QDateTimeEdit_virtualbase_devType(const VirtualQDateTimeEdit* self) {

	return self->QDateTimeEdit::devType();
}

void QDateTimeEdit_virtualbase_setVisible(VirtualQDateTimeEdit* self, bool visible) {

	self->QDateTimeEdit::setVisible(visible);
}

int QDateTimeEdit_virtualbase_heightForWidth(const VirtualQDateTimeEdit* self, int param1) {

	return self->QDateTimeEdit::heightForWidth(static_cast<int>(param1));
}

bool QDateTimeEdit_virtualbase_hasHeightForWidth(const VirtualQDateTimeEdit* self) {

	return self->QDateTimeEdit::hasHeightForWidth();
}

QPaintEngine* QDateTimeEdit_virtualbase_paintEngine(const VirtualQDateTimeEdit* self) {

	return self->QDateTimeEdit::paintEngine();
}

void QDateTimeEdit_virtualbase_mouseDoubleClickEvent(VirtualQDateTimeEdit* self, QMouseEvent* event) {

	self->QDateTimeEdit::mouseDoubleClickEvent(event);
}

void QDateTimeEdit_virtualbase_enterEvent(VirtualQDateTimeEdit* self, QEnterEvent* event) {

	self->QDateTimeEdit::enterEvent(event);
}

void QDateTimeEdit_virtualbase_leaveEvent(VirtualQDateTimeEdit* self, QEvent* event) {

	self->QDateTimeEdit::leaveEvent(event);
}

void QDateTimeEdit_virtualbase_moveEvent(VirtualQDateTimeEdit* self, QMoveEvent* event) {

	self->QDateTimeEdit::moveEvent(event);
}

void QDateTimeEdit_virtualbase_tabletEvent(VirtualQDateTimeEdit* self, QTabletEvent* event) {

	self->QDateTimeEdit::tabletEvent(event);
}

void QDateTimeEdit_virtualbase_actionEvent(VirtualQDateTimeEdit* self, QActionEvent* event) {

	self->QDateTimeEdit::actionEvent(event);
}

void QDateTimeEdit_virtualbase_dragEnterEvent(VirtualQDateTimeEdit* self, QDragEnterEvent* event) {

	self->QDateTimeEdit::dragEnterEvent(event);
}

void QDateTimeEdit_virtualbase_dragMoveEvent(VirtualQDateTimeEdit* self, QDragMoveEvent* event) {

	self->QDateTimeEdit::dragMoveEvent(event);
}

void QDateTimeEdit_virtualbase_dragLeaveEvent(VirtualQDateTimeEdit* self, QDragLeaveEvent* event) {

	self->QDateTimeEdit::dragLeaveEvent(event);
}

void QDateTimeEdit_virtualbase_dropEvent(VirtualQDateTimeEdit* self, QDropEvent* event) {

	self->QDateTimeEdit::dropEvent(event);
}

bool QDateTimeEdit_virtualbase_nativeEvent(VirtualQDateTimeEdit* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDateTimeEdit::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QDateTimeEdit_virtualbase_metric(const VirtualQDateTimeEdit* self, int param1) {

	return self->QDateTimeEdit::metric(static_cast<VirtualQDateTimeEdit::PaintDeviceMetric>(param1));
}

void QDateTimeEdit_virtualbase_initPainter(const VirtualQDateTimeEdit* self, QPainter* painter) {

	self->QDateTimeEdit::initPainter(painter);
}

QPaintDevice* QDateTimeEdit_virtualbase_redirected(const VirtualQDateTimeEdit* self, QPoint* offset) {

	return self->QDateTimeEdit::redirected(offset);
}

QPainter* QDateTimeEdit_virtualbase_sharedPainter(const VirtualQDateTimeEdit* self) {

	return self->QDateTimeEdit::sharedPainter();
}

void QDateTimeEdit_virtualbase_inputMethodEvent(VirtualQDateTimeEdit* self, QInputMethodEvent* param1) {

	self->QDateTimeEdit::inputMethodEvent(param1);
}

bool QDateTimeEdit_virtualbase_eventFilter(VirtualQDateTimeEdit* self, QObject* watched, QEvent* event) {

	return self->QDateTimeEdit::eventFilter(watched, event);
}

void QDateTimeEdit_virtualbase_childEvent(VirtualQDateTimeEdit* self, QChildEvent* event) {

	self->QDateTimeEdit::childEvent(event);
}

void QDateTimeEdit_virtualbase_customEvent(VirtualQDateTimeEdit* self, QEvent* event) {

	self->QDateTimeEdit::customEvent(event);
}

void QDateTimeEdit_virtualbase_connectNotify(VirtualQDateTimeEdit* self, QMetaMethod* signal) {

	self->QDateTimeEdit::connectNotify(*signal);
}

void QDateTimeEdit_virtualbase_disconnectNotify(VirtualQDateTimeEdit* self, QMetaMethod* signal) {

	self->QDateTimeEdit::disconnectNotify(*signal);
}

const QMetaObject* QDateTimeEdit_staticMetaObject() { return &QDateTimeEdit::staticMetaObject; }

const QDateTimeEdit_VTable* QDateTimeEdit_vtbl(const VirtualQDateTimeEdit* self) { return self->vtbl; }
void* QDateTimeEdit_vdata(const VirtualQDateTimeEdit* self) { return self->vdata; }
void QDateTimeEdit_setVdata(VirtualQDateTimeEdit* self, void* vdata) { self->vdata = vdata; }

QLineEdit* QDateTimeEdit_protectedbase_lineEdit(const VirtualQDateTimeEdit* self) {
	return self->lineEdit();
}

void QDateTimeEdit_protectedbase_setLineEdit(VirtualQDateTimeEdit* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

void QDateTimeEdit_protectedbase_updateMicroFocus(VirtualQDateTimeEdit* self) {
	self->updateMicroFocus();
}

void QDateTimeEdit_protectedbase_create(VirtualQDateTimeEdit* self) {
	self->create();
}

void QDateTimeEdit_protectedbase_destroy(VirtualQDateTimeEdit* self) {
	self->destroy();
}

bool QDateTimeEdit_protectedbase_focusNextChild(VirtualQDateTimeEdit* self) {
	return self->focusNextChild();
}

bool QDateTimeEdit_protectedbase_focusPreviousChild(VirtualQDateTimeEdit* self) {
	return self->focusPreviousChild();
}

QObject* QDateTimeEdit_protectedbase_sender(const VirtualQDateTimeEdit* self) {
	return self->sender();
}

int QDateTimeEdit_protectedbase_senderSignalIndex(const VirtualQDateTimeEdit* self) {
	return self->senderSignalIndex();
}

int QDateTimeEdit_protectedbase_receivers(const VirtualQDateTimeEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QDateTimeEdit_protectedbase_isSignalConnected(const VirtualQDateTimeEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDateTimeEdit_delete(QDateTimeEdit* self) {
	delete self;
}

class VirtualQTimeEdit final : public QTimeEdit {
	const QTimeEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QTimeEdit_VTable* QTimeEdit_vtbl(const VirtualQTimeEdit* self);
	friend void* QTimeEdit_vdata(const VirtualQTimeEdit* self);
	friend void QTimeEdit_setVdata(VirtualQTimeEdit* self, void* vdata);

	VirtualQTimeEdit(const QTimeEdit_VTable* vtbl, void* vdata, QWidget* parent): QTimeEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQTimeEdit(const QTimeEdit_VTable* vtbl, void* vdata): QTimeEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQTimeEdit(const QTimeEdit_VTable* vtbl, void* vdata, QTime time): QTimeEdit(time), vtbl(vtbl), vdata(vdata) {}
	VirtualQTimeEdit(const QTimeEdit_VTable* vtbl, void* vdata, QTime time, QWidget* parent): QTimeEdit(time, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQTimeEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QTimeEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QTimeEdit_virtualbase_metaObject(const VirtualQTimeEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QTimeEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QTimeEdit_virtualbase_metacast(VirtualQTimeEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QTimeEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_metacall(VirtualQTimeEdit* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QTimeEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTimeEdit_virtualbase_sizeHint(const VirtualQTimeEdit* self);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QTimeEdit::clear();
			return;
		}


		vtbl->clear(this);

	}

	friend void QTimeEdit_virtualbase_clear(VirtualQTimeEdit* self);

	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QTimeEdit::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_stepBy(VirtualQTimeEdit* self, int steps);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QTimeEdit::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_event(VirtualQTimeEdit* self, QEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QTimeEdit::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_keyPressEvent(VirtualQTimeEdit* self, QKeyEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QTimeEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_wheelEvent(VirtualQTimeEdit* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QTimeEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_focusInEvent(VirtualQTimeEdit* self, QFocusEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QTimeEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_focusNextPrevChild(VirtualQTimeEdit* self, bool next);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QTimeEdit::validate(input, pos);
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

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_validate(const VirtualQTimeEdit* self, struct miqt_string input, int* pos);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QTimeEdit::fixup(input);
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

		vtbl->fixup(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_fixup(const VirtualQTimeEdit* self, struct miqt_string input);

	virtual QDateTime dateTimeFromText(const QString& text) const override {
		if (vtbl->dateTimeFromText == 0) {
			return QTimeEdit::dateTimeFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		QDateTime* callback_return_value = vtbl->dateTimeFromText(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QDateTime* QTimeEdit_virtualbase_dateTimeFromText(const VirtualQTimeEdit* self, struct miqt_string text);

	virtual QString textFromDateTime(const QDateTime& dt) const override {
		if (vtbl->textFromDateTime == 0) {
			return QTimeEdit::textFromDateTime(dt);
		}

		const QDateTime& dt_ret = dt;
		// Cast returned reference into pointer
		QDateTime* sigval1 = const_cast<QDateTime*>(&dt_ret);

		struct miqt_string callback_return_value = vtbl->textFromDateTime(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QTimeEdit_virtualbase_textFromDateTime(const VirtualQTimeEdit* self, QDateTime* dt);

	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QTimeEdit::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_stepEnabled(const VirtualQTimeEdit* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QTimeEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mousePressEvent(VirtualQTimeEdit* self, QMouseEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QTimeEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_paintEvent(VirtualQTimeEdit* self, QPaintEvent* event);

	virtual void initStyleOption(QStyleOptionSpinBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QTimeEdit::initStyleOption(option);
			return;
		}

		QStyleOptionSpinBox* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_initStyleOption(const VirtualQTimeEdit* self, QStyleOptionSpinBox* option);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QTimeEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QTimeEdit_virtualbase_minimumSizeHint(const VirtualQTimeEdit* self);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QTimeEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QTimeEdit_virtualbase_inputMethodQuery(const VirtualQTimeEdit* self, int param1);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QTimeEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_resizeEvent(VirtualQTimeEdit* self, QResizeEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QTimeEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_keyReleaseEvent(VirtualQTimeEdit* self, QKeyEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QTimeEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_focusOutEvent(VirtualQTimeEdit* self, QFocusEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QTimeEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_contextMenuEvent(VirtualQTimeEdit* self, QContextMenuEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QTimeEdit::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_changeEvent(VirtualQTimeEdit* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QTimeEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_closeEvent(VirtualQTimeEdit* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QTimeEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_hideEvent(VirtualQTimeEdit* self, QHideEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QTimeEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mouseReleaseEvent(VirtualQTimeEdit* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QTimeEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mouseMoveEvent(VirtualQTimeEdit* self, QMouseEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QTimeEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_timerEvent(VirtualQTimeEdit* self, QTimerEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QTimeEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_showEvent(VirtualQTimeEdit* self, QShowEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QTimeEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_devType(const VirtualQTimeEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QTimeEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_setVisible(VirtualQTimeEdit* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QTimeEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_heightForWidth(const VirtualQTimeEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QTimeEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_hasHeightForWidth(const VirtualQTimeEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QTimeEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QTimeEdit_virtualbase_paintEngine(const VirtualQTimeEdit* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QTimeEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_mouseDoubleClickEvent(VirtualQTimeEdit* self, QMouseEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QTimeEdit::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_enterEvent(VirtualQTimeEdit* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QTimeEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_leaveEvent(VirtualQTimeEdit* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QTimeEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_moveEvent(VirtualQTimeEdit* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QTimeEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_tabletEvent(VirtualQTimeEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QTimeEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_actionEvent(VirtualQTimeEdit* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QTimeEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dragEnterEvent(VirtualQTimeEdit* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QTimeEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dragMoveEvent(VirtualQTimeEdit* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QTimeEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dragLeaveEvent(VirtualQTimeEdit* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QTimeEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_dropEvent(VirtualQTimeEdit* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QTimeEdit::nativeEvent(eventType, message, result);
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

	friend bool QTimeEdit_virtualbase_nativeEvent(VirtualQTimeEdit* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QTimeEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QTimeEdit_virtualbase_metric(const VirtualQTimeEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QTimeEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_initPainter(const VirtualQTimeEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QTimeEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QTimeEdit_virtualbase_redirected(const VirtualQTimeEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QTimeEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QTimeEdit_virtualbase_sharedPainter(const VirtualQTimeEdit* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QTimeEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_inputMethodEvent(VirtualQTimeEdit* self, QInputMethodEvent* param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QTimeEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QTimeEdit_virtualbase_eventFilter(VirtualQTimeEdit* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QTimeEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_childEvent(VirtualQTimeEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QTimeEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_customEvent(VirtualQTimeEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QTimeEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_connectNotify(VirtualQTimeEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QTimeEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QTimeEdit_virtualbase_disconnectNotify(VirtualQTimeEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QLineEdit* QTimeEdit_protectedbase_lineEdit(const VirtualQTimeEdit* self);
	friend void QTimeEdit_protectedbase_setLineEdit(VirtualQTimeEdit* self, QLineEdit* edit);
	friend void QTimeEdit_protectedbase_updateMicroFocus(VirtualQTimeEdit* self);
	friend void QTimeEdit_protectedbase_create(VirtualQTimeEdit* self);
	friend void QTimeEdit_protectedbase_destroy(VirtualQTimeEdit* self);
	friend bool QTimeEdit_protectedbase_focusNextChild(VirtualQTimeEdit* self);
	friend bool QTimeEdit_protectedbase_focusPreviousChild(VirtualQTimeEdit* self);
	friend QObject* QTimeEdit_protectedbase_sender(const VirtualQTimeEdit* self);
	friend int QTimeEdit_protectedbase_senderSignalIndex(const VirtualQTimeEdit* self);
	friend int QTimeEdit_protectedbase_receivers(const VirtualQTimeEdit* self, const char* signal);
	friend bool QTimeEdit_protectedbase_isSignalConnected(const VirtualQTimeEdit* self, QMetaMethod* signal);
};

VirtualQTimeEdit* QTimeEdit_new(const QTimeEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQTimeEdit(vtbl, vdata, parent);
}

VirtualQTimeEdit* QTimeEdit_new2(const QTimeEdit_VTable* vtbl, void* vdata) {
	return new VirtualQTimeEdit(vtbl, vdata);
}

VirtualQTimeEdit* QTimeEdit_new3(const QTimeEdit_VTable* vtbl, void* vdata, QTime* time) {
	return new VirtualQTimeEdit(vtbl, vdata, *time);
}

VirtualQTimeEdit* QTimeEdit_new4(const QTimeEdit_VTable* vtbl, void* vdata, QTime* time, QWidget* parent) {
	return new VirtualQTimeEdit(vtbl, vdata, *time, parent);
}

void QTimeEdit_virtbase(QTimeEdit* src, QDateTimeEdit** outptr_QDateTimeEdit) {
	*outptr_QDateTimeEdit = static_cast<QDateTimeEdit*>(src);
}

QMetaObject* QTimeEdit_metaObject(const QTimeEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QTimeEdit_metacast(QTimeEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QTimeEdit_metacall(QTimeEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QTimeEdit_tr(const char* s) {
	QString _ret = QTimeEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QTimeEdit_userTimeChanged(QTimeEdit* self, QTime* time) {
	self->userTimeChanged(*time);
}

void QTimeEdit_connect_userTimeChanged(VirtualQTimeEdit* self, intptr_t slot, void (*callback)(intptr_t, QTime*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QTime*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QTime*);
		void operator()(QTime time) {
			QTime* sigval1 = new QTime(time);
			callback(slot, sigval1);
		}
	};
	VirtualQTimeEdit::connect(self, static_cast<void (QTimeEdit::*)(QTime)>(&QTimeEdit::userTimeChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QTimeEdit_tr2(const char* s, const char* c) {
	QString _ret = QTimeEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QTimeEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QTimeEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QTimeEdit_virtualbase_metaObject(const VirtualQTimeEdit* self) {

	return (QMetaObject*) self->QTimeEdit::metaObject();
}

void* QTimeEdit_virtualbase_metacast(VirtualQTimeEdit* self, const char* param1) {

	return self->QTimeEdit::qt_metacast(param1);
}

int QTimeEdit_virtualbase_metacall(VirtualQTimeEdit* self, int param1, int param2, void** param3) {

	return self->QTimeEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QTimeEdit_virtualbase_sizeHint(const VirtualQTimeEdit* self) {

	return new QSize(self->QTimeEdit::sizeHint());
}

void QTimeEdit_virtualbase_clear(VirtualQTimeEdit* self) {

	self->QTimeEdit::clear();
}

void QTimeEdit_virtualbase_stepBy(VirtualQTimeEdit* self, int steps) {

	self->QTimeEdit::stepBy(static_cast<int>(steps));
}

bool QTimeEdit_virtualbase_event(VirtualQTimeEdit* self, QEvent* event) {

	return self->QTimeEdit::event(event);
}

void QTimeEdit_virtualbase_keyPressEvent(VirtualQTimeEdit* self, QKeyEvent* event) {

	self->QTimeEdit::keyPressEvent(event);
}

void QTimeEdit_virtualbase_wheelEvent(VirtualQTimeEdit* self, QWheelEvent* event) {

	self->QTimeEdit::wheelEvent(event);
}

void QTimeEdit_virtualbase_focusInEvent(VirtualQTimeEdit* self, QFocusEvent* event) {

	self->QTimeEdit::focusInEvent(event);
}

bool QTimeEdit_virtualbase_focusNextPrevChild(VirtualQTimeEdit* self, bool next) {

	return self->QTimeEdit::focusNextPrevChild(next);
}

int QTimeEdit_virtualbase_validate(const VirtualQTimeEdit* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = self->QTimeEdit::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QTimeEdit_virtualbase_fixup(const VirtualQTimeEdit* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QTimeEdit::fixup(input_QString);
}

QDateTime* QTimeEdit_virtualbase_dateTimeFromText(const VirtualQTimeEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QDateTime(self->QTimeEdit::dateTimeFromText(text_QString));
}

struct miqt_string QTimeEdit_virtualbase_textFromDateTime(const VirtualQTimeEdit* self, QDateTime* dt) {

	QString _ret = self->QTimeEdit::textFromDateTime(*dt);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QTimeEdit_virtualbase_stepEnabled(const VirtualQTimeEdit* self) {

	VirtualQTimeEdit::StepEnabled _ret = self->QTimeEdit::stepEnabled();
	return static_cast<int>(_ret);
}

void QTimeEdit_virtualbase_mousePressEvent(VirtualQTimeEdit* self, QMouseEvent* event) {

	self->QTimeEdit::mousePressEvent(event);
}

void QTimeEdit_virtualbase_paintEvent(VirtualQTimeEdit* self, QPaintEvent* event) {

	self->QTimeEdit::paintEvent(event);
}

void QTimeEdit_virtualbase_initStyleOption(const VirtualQTimeEdit* self, QStyleOptionSpinBox* option) {

	self->QTimeEdit::initStyleOption(option);
}

QSize* QTimeEdit_virtualbase_minimumSizeHint(const VirtualQTimeEdit* self) {

	return new QSize(self->QTimeEdit::minimumSizeHint());
}

QVariant* QTimeEdit_virtualbase_inputMethodQuery(const VirtualQTimeEdit* self, int param1) {

	return new QVariant(self->QTimeEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QTimeEdit_virtualbase_resizeEvent(VirtualQTimeEdit* self, QResizeEvent* event) {

	self->QTimeEdit::resizeEvent(event);
}

void QTimeEdit_virtualbase_keyReleaseEvent(VirtualQTimeEdit* self, QKeyEvent* event) {

	self->QTimeEdit::keyReleaseEvent(event);
}

void QTimeEdit_virtualbase_focusOutEvent(VirtualQTimeEdit* self, QFocusEvent* event) {

	self->QTimeEdit::focusOutEvent(event);
}

void QTimeEdit_virtualbase_contextMenuEvent(VirtualQTimeEdit* self, QContextMenuEvent* event) {

	self->QTimeEdit::contextMenuEvent(event);
}

void QTimeEdit_virtualbase_changeEvent(VirtualQTimeEdit* self, QEvent* event) {

	self->QTimeEdit::changeEvent(event);
}

void QTimeEdit_virtualbase_closeEvent(VirtualQTimeEdit* self, QCloseEvent* event) {

	self->QTimeEdit::closeEvent(event);
}

void QTimeEdit_virtualbase_hideEvent(VirtualQTimeEdit* self, QHideEvent* event) {

	self->QTimeEdit::hideEvent(event);
}

void QTimeEdit_virtualbase_mouseReleaseEvent(VirtualQTimeEdit* self, QMouseEvent* event) {

	self->QTimeEdit::mouseReleaseEvent(event);
}

void QTimeEdit_virtualbase_mouseMoveEvent(VirtualQTimeEdit* self, QMouseEvent* event) {

	self->QTimeEdit::mouseMoveEvent(event);
}

void QTimeEdit_virtualbase_timerEvent(VirtualQTimeEdit* self, QTimerEvent* event) {

	self->QTimeEdit::timerEvent(event);
}

void QTimeEdit_virtualbase_showEvent(VirtualQTimeEdit* self, QShowEvent* event) {

	self->QTimeEdit::showEvent(event);
}

int QTimeEdit_virtualbase_devType(const VirtualQTimeEdit* self) {

	return self->QTimeEdit::devType();
}

void QTimeEdit_virtualbase_setVisible(VirtualQTimeEdit* self, bool visible) {

	self->QTimeEdit::setVisible(visible);
}

int QTimeEdit_virtualbase_heightForWidth(const VirtualQTimeEdit* self, int param1) {

	return self->QTimeEdit::heightForWidth(static_cast<int>(param1));
}

bool QTimeEdit_virtualbase_hasHeightForWidth(const VirtualQTimeEdit* self) {

	return self->QTimeEdit::hasHeightForWidth();
}

QPaintEngine* QTimeEdit_virtualbase_paintEngine(const VirtualQTimeEdit* self) {

	return self->QTimeEdit::paintEngine();
}

void QTimeEdit_virtualbase_mouseDoubleClickEvent(VirtualQTimeEdit* self, QMouseEvent* event) {

	self->QTimeEdit::mouseDoubleClickEvent(event);
}

void QTimeEdit_virtualbase_enterEvent(VirtualQTimeEdit* self, QEnterEvent* event) {

	self->QTimeEdit::enterEvent(event);
}

void QTimeEdit_virtualbase_leaveEvent(VirtualQTimeEdit* self, QEvent* event) {

	self->QTimeEdit::leaveEvent(event);
}

void QTimeEdit_virtualbase_moveEvent(VirtualQTimeEdit* self, QMoveEvent* event) {

	self->QTimeEdit::moveEvent(event);
}

void QTimeEdit_virtualbase_tabletEvent(VirtualQTimeEdit* self, QTabletEvent* event) {

	self->QTimeEdit::tabletEvent(event);
}

void QTimeEdit_virtualbase_actionEvent(VirtualQTimeEdit* self, QActionEvent* event) {

	self->QTimeEdit::actionEvent(event);
}

void QTimeEdit_virtualbase_dragEnterEvent(VirtualQTimeEdit* self, QDragEnterEvent* event) {

	self->QTimeEdit::dragEnterEvent(event);
}

void QTimeEdit_virtualbase_dragMoveEvent(VirtualQTimeEdit* self, QDragMoveEvent* event) {

	self->QTimeEdit::dragMoveEvent(event);
}

void QTimeEdit_virtualbase_dragLeaveEvent(VirtualQTimeEdit* self, QDragLeaveEvent* event) {

	self->QTimeEdit::dragLeaveEvent(event);
}

void QTimeEdit_virtualbase_dropEvent(VirtualQTimeEdit* self, QDropEvent* event) {

	self->QTimeEdit::dropEvent(event);
}

bool QTimeEdit_virtualbase_nativeEvent(VirtualQTimeEdit* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QTimeEdit::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QTimeEdit_virtualbase_metric(const VirtualQTimeEdit* self, int param1) {

	return self->QTimeEdit::metric(static_cast<VirtualQTimeEdit::PaintDeviceMetric>(param1));
}

void QTimeEdit_virtualbase_initPainter(const VirtualQTimeEdit* self, QPainter* painter) {

	self->QTimeEdit::initPainter(painter);
}

QPaintDevice* QTimeEdit_virtualbase_redirected(const VirtualQTimeEdit* self, QPoint* offset) {

	return self->QTimeEdit::redirected(offset);
}

QPainter* QTimeEdit_virtualbase_sharedPainter(const VirtualQTimeEdit* self) {

	return self->QTimeEdit::sharedPainter();
}

void QTimeEdit_virtualbase_inputMethodEvent(VirtualQTimeEdit* self, QInputMethodEvent* param1) {

	self->QTimeEdit::inputMethodEvent(param1);
}

bool QTimeEdit_virtualbase_eventFilter(VirtualQTimeEdit* self, QObject* watched, QEvent* event) {

	return self->QTimeEdit::eventFilter(watched, event);
}

void QTimeEdit_virtualbase_childEvent(VirtualQTimeEdit* self, QChildEvent* event) {

	self->QTimeEdit::childEvent(event);
}

void QTimeEdit_virtualbase_customEvent(VirtualQTimeEdit* self, QEvent* event) {

	self->QTimeEdit::customEvent(event);
}

void QTimeEdit_virtualbase_connectNotify(VirtualQTimeEdit* self, QMetaMethod* signal) {

	self->QTimeEdit::connectNotify(*signal);
}

void QTimeEdit_virtualbase_disconnectNotify(VirtualQTimeEdit* self, QMetaMethod* signal) {

	self->QTimeEdit::disconnectNotify(*signal);
}

const QMetaObject* QTimeEdit_staticMetaObject() { return &QTimeEdit::staticMetaObject; }

const QTimeEdit_VTable* QTimeEdit_vtbl(const VirtualQTimeEdit* self) { return self->vtbl; }
void* QTimeEdit_vdata(const VirtualQTimeEdit* self) { return self->vdata; }
void QTimeEdit_setVdata(VirtualQTimeEdit* self, void* vdata) { self->vdata = vdata; }

QLineEdit* QTimeEdit_protectedbase_lineEdit(const VirtualQTimeEdit* self) {
	return self->lineEdit();
}

void QTimeEdit_protectedbase_setLineEdit(VirtualQTimeEdit* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

void QTimeEdit_protectedbase_updateMicroFocus(VirtualQTimeEdit* self) {
	self->updateMicroFocus();
}

void QTimeEdit_protectedbase_create(VirtualQTimeEdit* self) {
	self->create();
}

void QTimeEdit_protectedbase_destroy(VirtualQTimeEdit* self) {
	self->destroy();
}

bool QTimeEdit_protectedbase_focusNextChild(VirtualQTimeEdit* self) {
	return self->focusNextChild();
}

bool QTimeEdit_protectedbase_focusPreviousChild(VirtualQTimeEdit* self) {
	return self->focusPreviousChild();
}

QObject* QTimeEdit_protectedbase_sender(const VirtualQTimeEdit* self) {
	return self->sender();
}

int QTimeEdit_protectedbase_senderSignalIndex(const VirtualQTimeEdit* self) {
	return self->senderSignalIndex();
}

int QTimeEdit_protectedbase_receivers(const VirtualQTimeEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QTimeEdit_protectedbase_isSignalConnected(const VirtualQTimeEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QTimeEdit_delete(QTimeEdit* self) {
	delete self;
}

class VirtualQDateEdit final : public QDateEdit {
	const QDateEdit_VTable* vtbl;
	void* vdata;
public:
	friend const QDateEdit_VTable* QDateEdit_vtbl(const VirtualQDateEdit* self);
	friend void* QDateEdit_vdata(const VirtualQDateEdit* self);
	friend void QDateEdit_setVdata(VirtualQDateEdit* self, void* vdata);

	VirtualQDateEdit(const QDateEdit_VTable* vtbl, void* vdata, QWidget* parent): QDateEdit(parent), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateEdit(const QDateEdit_VTable* vtbl, void* vdata): QDateEdit(), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateEdit(const QDateEdit_VTable* vtbl, void* vdata, QDate date): QDateEdit(date), vtbl(vtbl), vdata(vdata) {}
	VirtualQDateEdit(const QDateEdit_VTable* vtbl, void* vdata, QDate date, QWidget* parent): QDateEdit(date, parent), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQDateEdit() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual const QMetaObject* metaObject() const override {
		if (vtbl->metaObject == 0) {
			return QDateEdit::metaObject();
		}


		QMetaObject* callback_return_value = vtbl->metaObject(this);

		return callback_return_value;
	}

	friend QMetaObject* QDateEdit_virtualbase_metaObject(const VirtualQDateEdit* self);

	virtual void* qt_metacast(const char* param1) override {
		if (vtbl->metacast == 0) {
			return QDateEdit::qt_metacast(param1);
		}

		const char* sigval1 = (const char*) param1;

		void* callback_return_value = vtbl->metacast(this, sigval1);

		return callback_return_value;
	}

	friend void* QDateEdit_virtualbase_metacast(VirtualQDateEdit* self, const char* param1);

	virtual int qt_metacall(QMetaObject::Call param1, int param2, void** param3) override {
		if (vtbl->metacall == 0) {
			return QDateEdit::qt_metacall(param1, param2, param3);
		}

		QMetaObject::Call param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);
		int sigval2 = param2;
		void** sigval3 = param3;

		int callback_return_value = vtbl->metacall(this, sigval1, sigval2, sigval3);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_metacall(VirtualQDateEdit* self, int param1, int param2, void** param3);

	virtual QSize sizeHint() const override {
		if (vtbl->sizeHint == 0) {
			return QDateEdit::sizeHint();
		}


		QSize* callback_return_value = vtbl->sizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDateEdit_virtualbase_sizeHint(const VirtualQDateEdit* self);

	virtual void clear() override {
		if (vtbl->clear == 0) {
			QDateEdit::clear();
			return;
		}


		vtbl->clear(this);

	}

	friend void QDateEdit_virtualbase_clear(VirtualQDateEdit* self);

	virtual void stepBy(int steps) override {
		if (vtbl->stepBy == 0) {
			QDateEdit::stepBy(steps);
			return;
		}

		int sigval1 = steps;

		vtbl->stepBy(this, sigval1);

	}

	friend void QDateEdit_virtualbase_stepBy(VirtualQDateEdit* self, int steps);

	virtual bool event(QEvent* event) override {
		if (vtbl->event == 0) {
			return QDateEdit::event(event);
		}

		QEvent* sigval1 = event;

		bool callback_return_value = vtbl->event(this, sigval1);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_event(VirtualQDateEdit* self, QEvent* event);

	virtual void keyPressEvent(QKeyEvent* event) override {
		if (vtbl->keyPressEvent == 0) {
			QDateEdit::keyPressEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyPressEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_keyPressEvent(VirtualQDateEdit* self, QKeyEvent* event);

	virtual void wheelEvent(QWheelEvent* event) override {
		if (vtbl->wheelEvent == 0) {
			QDateEdit::wheelEvent(event);
			return;
		}

		QWheelEvent* sigval1 = event;

		vtbl->wheelEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_wheelEvent(VirtualQDateEdit* self, QWheelEvent* event);

	virtual void focusInEvent(QFocusEvent* event) override {
		if (vtbl->focusInEvent == 0) {
			QDateEdit::focusInEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusInEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_focusInEvent(VirtualQDateEdit* self, QFocusEvent* event);

	virtual bool focusNextPrevChild(bool next) override {
		if (vtbl->focusNextPrevChild == 0) {
			return QDateEdit::focusNextPrevChild(next);
		}

		bool sigval1 = next;

		bool callback_return_value = vtbl->focusNextPrevChild(this, sigval1);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_focusNextPrevChild(VirtualQDateEdit* self, bool next);

	virtual QValidator::State validate(QString& input, int& pos) const override {
		if (vtbl->validate == 0) {
			return QDateEdit::validate(input, pos);
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

		int callback_return_value = vtbl->validate(this, sigval1, sigval2);

		return static_cast<QValidator::State>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_validate(const VirtualQDateEdit* self, struct miqt_string input, int* pos);

	virtual void fixup(QString& input) const override {
		if (vtbl->fixup == 0) {
			QDateEdit::fixup(input);
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

		vtbl->fixup(this, sigval1);

	}

	friend void QDateEdit_virtualbase_fixup(const VirtualQDateEdit* self, struct miqt_string input);

	virtual QDateTime dateTimeFromText(const QString& text) const override {
		if (vtbl->dateTimeFromText == 0) {
			return QDateEdit::dateTimeFromText(text);
		}

		const QString text_ret = text;
		// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
		QByteArray text_b = text_ret.toUtf8();
		struct miqt_string text_ms;
		text_ms.len = text_b.length();
		text_ms.data = static_cast<char*>(malloc(text_ms.len));
		memcpy(text_ms.data, text_b.data(), text_ms.len);
		struct miqt_string sigval1 = text_ms;

		QDateTime* callback_return_value = vtbl->dateTimeFromText(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QDateTime* QDateEdit_virtualbase_dateTimeFromText(const VirtualQDateEdit* self, struct miqt_string text);

	virtual QString textFromDateTime(const QDateTime& dt) const override {
		if (vtbl->textFromDateTime == 0) {
			return QDateEdit::textFromDateTime(dt);
		}

		const QDateTime& dt_ret = dt;
		// Cast returned reference into pointer
		QDateTime* sigval1 = const_cast<QDateTime*>(&dt_ret);

		struct miqt_string callback_return_value = vtbl->textFromDateTime(this, sigval1);
		QString callback_return_value_QString = QString::fromUtf8(callback_return_value.data, callback_return_value.len);
		free(callback_return_value.data);

		return callback_return_value_QString;
	}

	friend struct miqt_string QDateEdit_virtualbase_textFromDateTime(const VirtualQDateEdit* self, QDateTime* dt);

	virtual QAbstractSpinBox::StepEnabled stepEnabled() const override {
		if (vtbl->stepEnabled == 0) {
			return QDateEdit::stepEnabled();
		}


		int callback_return_value = vtbl->stepEnabled(this);

		return static_cast<QAbstractSpinBox::StepEnabled>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_stepEnabled(const VirtualQDateEdit* self);

	virtual void mousePressEvent(QMouseEvent* event) override {
		if (vtbl->mousePressEvent == 0) {
			QDateEdit::mousePressEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mousePressEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_mousePressEvent(VirtualQDateEdit* self, QMouseEvent* event);

	virtual void paintEvent(QPaintEvent* event) override {
		if (vtbl->paintEvent == 0) {
			QDateEdit::paintEvent(event);
			return;
		}

		QPaintEvent* sigval1 = event;

		vtbl->paintEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_paintEvent(VirtualQDateEdit* self, QPaintEvent* event);

	virtual void initStyleOption(QStyleOptionSpinBox* option) const override {
		if (vtbl->initStyleOption == 0) {
			QDateEdit::initStyleOption(option);
			return;
		}

		QStyleOptionSpinBox* sigval1 = option;

		vtbl->initStyleOption(this, sigval1);

	}

	friend void QDateEdit_virtualbase_initStyleOption(const VirtualQDateEdit* self, QStyleOptionSpinBox* option);

	virtual QSize minimumSizeHint() const override {
		if (vtbl->minimumSizeHint == 0) {
			return QDateEdit::minimumSizeHint();
		}


		QSize* callback_return_value = vtbl->minimumSizeHint(this);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QSize* QDateEdit_virtualbase_minimumSizeHint(const VirtualQDateEdit* self);

	virtual QVariant inputMethodQuery(Qt::InputMethodQuery param1) const override {
		if (vtbl->inputMethodQuery == 0) {
			return QDateEdit::inputMethodQuery(param1);
		}

		Qt::InputMethodQuery param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		QVariant* callback_return_value = vtbl->inputMethodQuery(this, sigval1);
		auto callback_return_value_Value = std::move(*callback_return_value);
		delete callback_return_value;

		return callback_return_value_Value;
	}

	friend QVariant* QDateEdit_virtualbase_inputMethodQuery(const VirtualQDateEdit* self, int param1);

	virtual void resizeEvent(QResizeEvent* event) override {
		if (vtbl->resizeEvent == 0) {
			QDateEdit::resizeEvent(event);
			return;
		}

		QResizeEvent* sigval1 = event;

		vtbl->resizeEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_resizeEvent(VirtualQDateEdit* self, QResizeEvent* event);

	virtual void keyReleaseEvent(QKeyEvent* event) override {
		if (vtbl->keyReleaseEvent == 0) {
			QDateEdit::keyReleaseEvent(event);
			return;
		}

		QKeyEvent* sigval1 = event;

		vtbl->keyReleaseEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_keyReleaseEvent(VirtualQDateEdit* self, QKeyEvent* event);

	virtual void focusOutEvent(QFocusEvent* event) override {
		if (vtbl->focusOutEvent == 0) {
			QDateEdit::focusOutEvent(event);
			return;
		}

		QFocusEvent* sigval1 = event;

		vtbl->focusOutEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_focusOutEvent(VirtualQDateEdit* self, QFocusEvent* event);

	virtual void contextMenuEvent(QContextMenuEvent* event) override {
		if (vtbl->contextMenuEvent == 0) {
			QDateEdit::contextMenuEvent(event);
			return;
		}

		QContextMenuEvent* sigval1 = event;

		vtbl->contextMenuEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_contextMenuEvent(VirtualQDateEdit* self, QContextMenuEvent* event);

	virtual void changeEvent(QEvent* event) override {
		if (vtbl->changeEvent == 0) {
			QDateEdit::changeEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->changeEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_changeEvent(VirtualQDateEdit* self, QEvent* event);

	virtual void closeEvent(QCloseEvent* event) override {
		if (vtbl->closeEvent == 0) {
			QDateEdit::closeEvent(event);
			return;
		}

		QCloseEvent* sigval1 = event;

		vtbl->closeEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_closeEvent(VirtualQDateEdit* self, QCloseEvent* event);

	virtual void hideEvent(QHideEvent* event) override {
		if (vtbl->hideEvent == 0) {
			QDateEdit::hideEvent(event);
			return;
		}

		QHideEvent* sigval1 = event;

		vtbl->hideEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_hideEvent(VirtualQDateEdit* self, QHideEvent* event);

	virtual void mouseReleaseEvent(QMouseEvent* event) override {
		if (vtbl->mouseReleaseEvent == 0) {
			QDateEdit::mouseReleaseEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseReleaseEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_mouseReleaseEvent(VirtualQDateEdit* self, QMouseEvent* event);

	virtual void mouseMoveEvent(QMouseEvent* event) override {
		if (vtbl->mouseMoveEvent == 0) {
			QDateEdit::mouseMoveEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseMoveEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_mouseMoveEvent(VirtualQDateEdit* self, QMouseEvent* event);

	virtual void timerEvent(QTimerEvent* event) override {
		if (vtbl->timerEvent == 0) {
			QDateEdit::timerEvent(event);
			return;
		}

		QTimerEvent* sigval1 = event;

		vtbl->timerEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_timerEvent(VirtualQDateEdit* self, QTimerEvent* event);

	virtual void showEvent(QShowEvent* event) override {
		if (vtbl->showEvent == 0) {
			QDateEdit::showEvent(event);
			return;
		}

		QShowEvent* sigval1 = event;

		vtbl->showEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_showEvent(VirtualQDateEdit* self, QShowEvent* event);

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QDateEdit::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_devType(const VirtualQDateEdit* self);

	virtual void setVisible(bool visible) override {
		if (vtbl->setVisible == 0) {
			QDateEdit::setVisible(visible);
			return;
		}

		bool sigval1 = visible;

		vtbl->setVisible(this, sigval1);

	}

	friend void QDateEdit_virtualbase_setVisible(VirtualQDateEdit* self, bool visible);

	virtual int heightForWidth(int param1) const override {
		if (vtbl->heightForWidth == 0) {
			return QDateEdit::heightForWidth(param1);
		}

		int sigval1 = param1;

		int callback_return_value = vtbl->heightForWidth(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_heightForWidth(const VirtualQDateEdit* self, int param1);

	virtual bool hasHeightForWidth() const override {
		if (vtbl->hasHeightForWidth == 0) {
			return QDateEdit::hasHeightForWidth();
		}


		bool callback_return_value = vtbl->hasHeightForWidth(this);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_hasHeightForWidth(const VirtualQDateEdit* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QDateEdit::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QDateEdit_virtualbase_paintEngine(const VirtualQDateEdit* self);

	virtual void mouseDoubleClickEvent(QMouseEvent* event) override {
		if (vtbl->mouseDoubleClickEvent == 0) {
			QDateEdit::mouseDoubleClickEvent(event);
			return;
		}

		QMouseEvent* sigval1 = event;

		vtbl->mouseDoubleClickEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_mouseDoubleClickEvent(VirtualQDateEdit* self, QMouseEvent* event);

	virtual void enterEvent(QEnterEvent* event) override {
		if (vtbl->enterEvent == 0) {
			QDateEdit::enterEvent(event);
			return;
		}

		QEnterEvent* sigval1 = event;

		vtbl->enterEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_enterEvent(VirtualQDateEdit* self, QEnterEvent* event);

	virtual void leaveEvent(QEvent* event) override {
		if (vtbl->leaveEvent == 0) {
			QDateEdit::leaveEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->leaveEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_leaveEvent(VirtualQDateEdit* self, QEvent* event);

	virtual void moveEvent(QMoveEvent* event) override {
		if (vtbl->moveEvent == 0) {
			QDateEdit::moveEvent(event);
			return;
		}

		QMoveEvent* sigval1 = event;

		vtbl->moveEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_moveEvent(VirtualQDateEdit* self, QMoveEvent* event);

	virtual void tabletEvent(QTabletEvent* event) override {
		if (vtbl->tabletEvent == 0) {
			QDateEdit::tabletEvent(event);
			return;
		}

		QTabletEvent* sigval1 = event;

		vtbl->tabletEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_tabletEvent(VirtualQDateEdit* self, QTabletEvent* event);

	virtual void actionEvent(QActionEvent* event) override {
		if (vtbl->actionEvent == 0) {
			QDateEdit::actionEvent(event);
			return;
		}

		QActionEvent* sigval1 = event;

		vtbl->actionEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_actionEvent(VirtualQDateEdit* self, QActionEvent* event);

	virtual void dragEnterEvent(QDragEnterEvent* event) override {
		if (vtbl->dragEnterEvent == 0) {
			QDateEdit::dragEnterEvent(event);
			return;
		}

		QDragEnterEvent* sigval1 = event;

		vtbl->dragEnterEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_dragEnterEvent(VirtualQDateEdit* self, QDragEnterEvent* event);

	virtual void dragMoveEvent(QDragMoveEvent* event) override {
		if (vtbl->dragMoveEvent == 0) {
			QDateEdit::dragMoveEvent(event);
			return;
		}

		QDragMoveEvent* sigval1 = event;

		vtbl->dragMoveEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_dragMoveEvent(VirtualQDateEdit* self, QDragMoveEvent* event);

	virtual void dragLeaveEvent(QDragLeaveEvent* event) override {
		if (vtbl->dragLeaveEvent == 0) {
			QDateEdit::dragLeaveEvent(event);
			return;
		}

		QDragLeaveEvent* sigval1 = event;

		vtbl->dragLeaveEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_dragLeaveEvent(VirtualQDateEdit* self, QDragLeaveEvent* event);

	virtual void dropEvent(QDropEvent* event) override {
		if (vtbl->dropEvent == 0) {
			QDateEdit::dropEvent(event);
			return;
		}

		QDropEvent* sigval1 = event;

		vtbl->dropEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_dropEvent(VirtualQDateEdit* self, QDropEvent* event);

	virtual bool nativeEvent(const QByteArray& eventType, void* message, qintptr* result) override {
		if (vtbl->nativeEvent == 0) {
			return QDateEdit::nativeEvent(eventType, message, result);
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

	friend bool QDateEdit_virtualbase_nativeEvent(VirtualQDateEdit* self, struct miqt_string eventType, void* message, intptr_t* result);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QDateEdit::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QDateEdit_virtualbase_metric(const VirtualQDateEdit* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QDateEdit::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QDateEdit_virtualbase_initPainter(const VirtualQDateEdit* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QDateEdit::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QDateEdit_virtualbase_redirected(const VirtualQDateEdit* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QDateEdit::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QDateEdit_virtualbase_sharedPainter(const VirtualQDateEdit* self);

	virtual void inputMethodEvent(QInputMethodEvent* param1) override {
		if (vtbl->inputMethodEvent == 0) {
			QDateEdit::inputMethodEvent(param1);
			return;
		}

		QInputMethodEvent* sigval1 = param1;

		vtbl->inputMethodEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_inputMethodEvent(VirtualQDateEdit* self, QInputMethodEvent* param1);

	virtual bool eventFilter(QObject* watched, QEvent* event) override {
		if (vtbl->eventFilter == 0) {
			return QDateEdit::eventFilter(watched, event);
		}

		QObject* sigval1 = watched;
		QEvent* sigval2 = event;

		bool callback_return_value = vtbl->eventFilter(this, sigval1, sigval2);

		return callback_return_value;
	}

	friend bool QDateEdit_virtualbase_eventFilter(VirtualQDateEdit* self, QObject* watched, QEvent* event);

	virtual void childEvent(QChildEvent* event) override {
		if (vtbl->childEvent == 0) {
			QDateEdit::childEvent(event);
			return;
		}

		QChildEvent* sigval1 = event;

		vtbl->childEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_childEvent(VirtualQDateEdit* self, QChildEvent* event);

	virtual void customEvent(QEvent* event) override {
		if (vtbl->customEvent == 0) {
			QDateEdit::customEvent(event);
			return;
		}

		QEvent* sigval1 = event;

		vtbl->customEvent(this, sigval1);

	}

	friend void QDateEdit_virtualbase_customEvent(VirtualQDateEdit* self, QEvent* event);

	virtual void connectNotify(const QMetaMethod& signal) override {
		if (vtbl->connectNotify == 0) {
			QDateEdit::connectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->connectNotify(this, sigval1);

	}

	friend void QDateEdit_virtualbase_connectNotify(VirtualQDateEdit* self, QMetaMethod* signal);

	virtual void disconnectNotify(const QMetaMethod& signal) override {
		if (vtbl->disconnectNotify == 0) {
			QDateEdit::disconnectNotify(signal);
			return;
		}

		const QMetaMethod& signal_ret = signal;
		// Cast returned reference into pointer
		QMetaMethod* sigval1 = const_cast<QMetaMethod*>(&signal_ret);

		vtbl->disconnectNotify(this, sigval1);

	}

	friend void QDateEdit_virtualbase_disconnectNotify(VirtualQDateEdit* self, QMetaMethod* signal);

	// Wrappers to allow calling protected methods:
	friend QLineEdit* QDateEdit_protectedbase_lineEdit(const VirtualQDateEdit* self);
	friend void QDateEdit_protectedbase_setLineEdit(VirtualQDateEdit* self, QLineEdit* edit);
	friend void QDateEdit_protectedbase_updateMicroFocus(VirtualQDateEdit* self);
	friend void QDateEdit_protectedbase_create(VirtualQDateEdit* self);
	friend void QDateEdit_protectedbase_destroy(VirtualQDateEdit* self);
	friend bool QDateEdit_protectedbase_focusNextChild(VirtualQDateEdit* self);
	friend bool QDateEdit_protectedbase_focusPreviousChild(VirtualQDateEdit* self);
	friend QObject* QDateEdit_protectedbase_sender(const VirtualQDateEdit* self);
	friend int QDateEdit_protectedbase_senderSignalIndex(const VirtualQDateEdit* self);
	friend int QDateEdit_protectedbase_receivers(const VirtualQDateEdit* self, const char* signal);
	friend bool QDateEdit_protectedbase_isSignalConnected(const VirtualQDateEdit* self, QMetaMethod* signal);
};

VirtualQDateEdit* QDateEdit_new(const QDateEdit_VTable* vtbl, void* vdata, QWidget* parent) {
	return new VirtualQDateEdit(vtbl, vdata, parent);
}

VirtualQDateEdit* QDateEdit_new2(const QDateEdit_VTable* vtbl, void* vdata) {
	return new VirtualQDateEdit(vtbl, vdata);
}

VirtualQDateEdit* QDateEdit_new3(const QDateEdit_VTable* vtbl, void* vdata, QDate* date) {
	return new VirtualQDateEdit(vtbl, vdata, *date);
}

VirtualQDateEdit* QDateEdit_new4(const QDateEdit_VTable* vtbl, void* vdata, QDate* date, QWidget* parent) {
	return new VirtualQDateEdit(vtbl, vdata, *date, parent);
}

void QDateEdit_virtbase(QDateEdit* src, QDateTimeEdit** outptr_QDateTimeEdit) {
	*outptr_QDateTimeEdit = static_cast<QDateTimeEdit*>(src);
}

QMetaObject* QDateEdit_metaObject(const QDateEdit* self) {
	return (QMetaObject*) self->metaObject();
}

void* QDateEdit_metacast(QDateEdit* self, const char* param1) {
	return self->qt_metacast(param1);
}

int QDateEdit_metacall(QDateEdit* self, int param1, int param2, void** param3) {
	return self->qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

struct miqt_string QDateEdit_tr(const char* s) {
	QString _ret = QDateEdit::tr(s);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QDateEdit_userDateChanged(QDateEdit* self, QDate* date) {
	self->userDateChanged(*date);
}

void QDateEdit_connect_userDateChanged(VirtualQDateEdit* self, intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) {
	struct local_caller : seaqt::caller {
		constexpr local_caller(intptr_t slot, void (*callback)(intptr_t, QDate*), void (*release)(intptr_t)) : callback(callback), caller{slot, release} {}
		void (*callback)(intptr_t, QDate*);
		void operator()(QDate date) {
			QDate* sigval1 = new QDate(date);
			callback(slot, sigval1);
		}
	};
	VirtualQDateEdit::connect(self, static_cast<void (QDateEdit::*)(QDate)>(&QDateEdit::userDateChanged), self, local_caller{slot, callback, release});
}

struct miqt_string QDateEdit_tr2(const char* s, const char* c) {
	QString _ret = QDateEdit::tr(s, c);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

struct miqt_string QDateEdit_tr3(const char* s, const char* c, int n) {
	QString _ret = QDateEdit::tr(s, c, static_cast<int>(n));
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

QMetaObject* QDateEdit_virtualbase_metaObject(const VirtualQDateEdit* self) {

	return (QMetaObject*) self->QDateEdit::metaObject();
}

void* QDateEdit_virtualbase_metacast(VirtualQDateEdit* self, const char* param1) {

	return self->QDateEdit::qt_metacast(param1);
}

int QDateEdit_virtualbase_metacall(VirtualQDateEdit* self, int param1, int param2, void** param3) {

	return self->QDateEdit::qt_metacall(static_cast<QMetaObject::Call>(param1), static_cast<int>(param2), param3);
}

QSize* QDateEdit_virtualbase_sizeHint(const VirtualQDateEdit* self) {

	return new QSize(self->QDateEdit::sizeHint());
}

void QDateEdit_virtualbase_clear(VirtualQDateEdit* self) {

	self->QDateEdit::clear();
}

void QDateEdit_virtualbase_stepBy(VirtualQDateEdit* self, int steps) {

	self->QDateEdit::stepBy(static_cast<int>(steps));
}

bool QDateEdit_virtualbase_event(VirtualQDateEdit* self, QEvent* event) {

	return self->QDateEdit::event(event);
}

void QDateEdit_virtualbase_keyPressEvent(VirtualQDateEdit* self, QKeyEvent* event) {

	self->QDateEdit::keyPressEvent(event);
}

void QDateEdit_virtualbase_wheelEvent(VirtualQDateEdit* self, QWheelEvent* event) {

	self->QDateEdit::wheelEvent(event);
}

void QDateEdit_virtualbase_focusInEvent(VirtualQDateEdit* self, QFocusEvent* event) {

	self->QDateEdit::focusInEvent(event);
}

bool QDateEdit_virtualbase_focusNextPrevChild(VirtualQDateEdit* self, bool next) {

	return self->QDateEdit::focusNextPrevChild(next);
}

int QDateEdit_virtualbase_validate(const VirtualQDateEdit* self, struct miqt_string input, int* pos) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	QValidator::State _ret = self->QDateEdit::validate(input_QString, static_cast<int&>(*pos));
	return static_cast<int>(_ret);
}

void QDateEdit_virtualbase_fixup(const VirtualQDateEdit* self, struct miqt_string input) {
	QString input_QString = QString::fromUtf8(input.data, input.len);

	self->QDateEdit::fixup(input_QString);
}

QDateTime* QDateEdit_virtualbase_dateTimeFromText(const VirtualQDateEdit* self, struct miqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);

	return new QDateTime(self->QDateEdit::dateTimeFromText(text_QString));
}

struct miqt_string QDateEdit_virtualbase_textFromDateTime(const VirtualQDateEdit* self, QDateTime* dt) {

	QString _ret = self->QDateEdit::textFromDateTime(*dt);
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

int QDateEdit_virtualbase_stepEnabled(const VirtualQDateEdit* self) {

	VirtualQDateEdit::StepEnabled _ret = self->QDateEdit::stepEnabled();
	return static_cast<int>(_ret);
}

void QDateEdit_virtualbase_mousePressEvent(VirtualQDateEdit* self, QMouseEvent* event) {

	self->QDateEdit::mousePressEvent(event);
}

void QDateEdit_virtualbase_paintEvent(VirtualQDateEdit* self, QPaintEvent* event) {

	self->QDateEdit::paintEvent(event);
}

void QDateEdit_virtualbase_initStyleOption(const VirtualQDateEdit* self, QStyleOptionSpinBox* option) {

	self->QDateEdit::initStyleOption(option);
}

QSize* QDateEdit_virtualbase_minimumSizeHint(const VirtualQDateEdit* self) {

	return new QSize(self->QDateEdit::minimumSizeHint());
}

QVariant* QDateEdit_virtualbase_inputMethodQuery(const VirtualQDateEdit* self, int param1) {

	return new QVariant(self->QDateEdit::inputMethodQuery(static_cast<Qt::InputMethodQuery>(param1)));
}

void QDateEdit_virtualbase_resizeEvent(VirtualQDateEdit* self, QResizeEvent* event) {

	self->QDateEdit::resizeEvent(event);
}

void QDateEdit_virtualbase_keyReleaseEvent(VirtualQDateEdit* self, QKeyEvent* event) {

	self->QDateEdit::keyReleaseEvent(event);
}

void QDateEdit_virtualbase_focusOutEvent(VirtualQDateEdit* self, QFocusEvent* event) {

	self->QDateEdit::focusOutEvent(event);
}

void QDateEdit_virtualbase_contextMenuEvent(VirtualQDateEdit* self, QContextMenuEvent* event) {

	self->QDateEdit::contextMenuEvent(event);
}

void QDateEdit_virtualbase_changeEvent(VirtualQDateEdit* self, QEvent* event) {

	self->QDateEdit::changeEvent(event);
}

void QDateEdit_virtualbase_closeEvent(VirtualQDateEdit* self, QCloseEvent* event) {

	self->QDateEdit::closeEvent(event);
}

void QDateEdit_virtualbase_hideEvent(VirtualQDateEdit* self, QHideEvent* event) {

	self->QDateEdit::hideEvent(event);
}

void QDateEdit_virtualbase_mouseReleaseEvent(VirtualQDateEdit* self, QMouseEvent* event) {

	self->QDateEdit::mouseReleaseEvent(event);
}

void QDateEdit_virtualbase_mouseMoveEvent(VirtualQDateEdit* self, QMouseEvent* event) {

	self->QDateEdit::mouseMoveEvent(event);
}

void QDateEdit_virtualbase_timerEvent(VirtualQDateEdit* self, QTimerEvent* event) {

	self->QDateEdit::timerEvent(event);
}

void QDateEdit_virtualbase_showEvent(VirtualQDateEdit* self, QShowEvent* event) {

	self->QDateEdit::showEvent(event);
}

int QDateEdit_virtualbase_devType(const VirtualQDateEdit* self) {

	return self->QDateEdit::devType();
}

void QDateEdit_virtualbase_setVisible(VirtualQDateEdit* self, bool visible) {

	self->QDateEdit::setVisible(visible);
}

int QDateEdit_virtualbase_heightForWidth(const VirtualQDateEdit* self, int param1) {

	return self->QDateEdit::heightForWidth(static_cast<int>(param1));
}

bool QDateEdit_virtualbase_hasHeightForWidth(const VirtualQDateEdit* self) {

	return self->QDateEdit::hasHeightForWidth();
}

QPaintEngine* QDateEdit_virtualbase_paintEngine(const VirtualQDateEdit* self) {

	return self->QDateEdit::paintEngine();
}

void QDateEdit_virtualbase_mouseDoubleClickEvent(VirtualQDateEdit* self, QMouseEvent* event) {

	self->QDateEdit::mouseDoubleClickEvent(event);
}

void QDateEdit_virtualbase_enterEvent(VirtualQDateEdit* self, QEnterEvent* event) {

	self->QDateEdit::enterEvent(event);
}

void QDateEdit_virtualbase_leaveEvent(VirtualQDateEdit* self, QEvent* event) {

	self->QDateEdit::leaveEvent(event);
}

void QDateEdit_virtualbase_moveEvent(VirtualQDateEdit* self, QMoveEvent* event) {

	self->QDateEdit::moveEvent(event);
}

void QDateEdit_virtualbase_tabletEvent(VirtualQDateEdit* self, QTabletEvent* event) {

	self->QDateEdit::tabletEvent(event);
}

void QDateEdit_virtualbase_actionEvent(VirtualQDateEdit* self, QActionEvent* event) {

	self->QDateEdit::actionEvent(event);
}

void QDateEdit_virtualbase_dragEnterEvent(VirtualQDateEdit* self, QDragEnterEvent* event) {

	self->QDateEdit::dragEnterEvent(event);
}

void QDateEdit_virtualbase_dragMoveEvent(VirtualQDateEdit* self, QDragMoveEvent* event) {

	self->QDateEdit::dragMoveEvent(event);
}

void QDateEdit_virtualbase_dragLeaveEvent(VirtualQDateEdit* self, QDragLeaveEvent* event) {

	self->QDateEdit::dragLeaveEvent(event);
}

void QDateEdit_virtualbase_dropEvent(VirtualQDateEdit* self, QDropEvent* event) {

	self->QDateEdit::dropEvent(event);
}

bool QDateEdit_virtualbase_nativeEvent(VirtualQDateEdit* self, struct miqt_string eventType, void* message, intptr_t* result) {
	QByteArray eventType_QByteArray(eventType.data, eventType.len);

	return self->QDateEdit::nativeEvent(eventType_QByteArray, message, (qintptr*)(result));
}

int QDateEdit_virtualbase_metric(const VirtualQDateEdit* self, int param1) {

	return self->QDateEdit::metric(static_cast<VirtualQDateEdit::PaintDeviceMetric>(param1));
}

void QDateEdit_virtualbase_initPainter(const VirtualQDateEdit* self, QPainter* painter) {

	self->QDateEdit::initPainter(painter);
}

QPaintDevice* QDateEdit_virtualbase_redirected(const VirtualQDateEdit* self, QPoint* offset) {

	return self->QDateEdit::redirected(offset);
}

QPainter* QDateEdit_virtualbase_sharedPainter(const VirtualQDateEdit* self) {

	return self->QDateEdit::sharedPainter();
}

void QDateEdit_virtualbase_inputMethodEvent(VirtualQDateEdit* self, QInputMethodEvent* param1) {

	self->QDateEdit::inputMethodEvent(param1);
}

bool QDateEdit_virtualbase_eventFilter(VirtualQDateEdit* self, QObject* watched, QEvent* event) {

	return self->QDateEdit::eventFilter(watched, event);
}

void QDateEdit_virtualbase_childEvent(VirtualQDateEdit* self, QChildEvent* event) {

	self->QDateEdit::childEvent(event);
}

void QDateEdit_virtualbase_customEvent(VirtualQDateEdit* self, QEvent* event) {

	self->QDateEdit::customEvent(event);
}

void QDateEdit_virtualbase_connectNotify(VirtualQDateEdit* self, QMetaMethod* signal) {

	self->QDateEdit::connectNotify(*signal);
}

void QDateEdit_virtualbase_disconnectNotify(VirtualQDateEdit* self, QMetaMethod* signal) {

	self->QDateEdit::disconnectNotify(*signal);
}

const QMetaObject* QDateEdit_staticMetaObject() { return &QDateEdit::staticMetaObject; }

const QDateEdit_VTable* QDateEdit_vtbl(const VirtualQDateEdit* self) { return self->vtbl; }
void* QDateEdit_vdata(const VirtualQDateEdit* self) { return self->vdata; }
void QDateEdit_setVdata(VirtualQDateEdit* self, void* vdata) { self->vdata = vdata; }

QLineEdit* QDateEdit_protectedbase_lineEdit(const VirtualQDateEdit* self) {
	return self->lineEdit();
}

void QDateEdit_protectedbase_setLineEdit(VirtualQDateEdit* self, QLineEdit* edit) {
	self->setLineEdit(edit);
}

void QDateEdit_protectedbase_updateMicroFocus(VirtualQDateEdit* self) {
	self->updateMicroFocus();
}

void QDateEdit_protectedbase_create(VirtualQDateEdit* self) {
	self->create();
}

void QDateEdit_protectedbase_destroy(VirtualQDateEdit* self) {
	self->destroy();
}

bool QDateEdit_protectedbase_focusNextChild(VirtualQDateEdit* self) {
	return self->focusNextChild();
}

bool QDateEdit_protectedbase_focusPreviousChild(VirtualQDateEdit* self) {
	return self->focusPreviousChild();
}

QObject* QDateEdit_protectedbase_sender(const VirtualQDateEdit* self) {
	return self->sender();
}

int QDateEdit_protectedbase_senderSignalIndex(const VirtualQDateEdit* self) {
	return self->senderSignalIndex();
}

int QDateEdit_protectedbase_receivers(const VirtualQDateEdit* self, const char* signal) {
	return self->receivers(signal);
}

bool QDateEdit_protectedbase_isSignalConnected(const VirtualQDateEdit* self, QMetaMethod* signal) {
	return self->isSignalConnected(*signal);
}

void QDateEdit_delete(QDateEdit* self) {
	delete self;
}

