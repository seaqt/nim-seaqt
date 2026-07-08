#include <QAction>
#include <QObject>
#include <QPoint>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <QWhatsThis>
#include <QWidget>
#include <qwhatsthis.h>
#include "gen_qwhatsthis.h"

#ifndef SEAQT_ALIGNED_SIZEOF
#define SEAQT_ALIGNED_SIZEOF 1
#include <cstddef>
template<typename T>
static constexpr std::size_t seaqt_aligned_sizeof() {
	constexpr auto alignment = sizeof(std::max_align_t);
	return (sizeof(T) + alignment - 1) & ~(alignment - 1);
}
#endif

void QWhatsThis_enterWhatsThisMode() {
	QWhatsThis::enterWhatsThisMode();
}

bool QWhatsThis_inWhatsThisMode() {
	return QWhatsThis::inWhatsThisMode();
}

void QWhatsThis_leaveWhatsThisMode() {
	QWhatsThis::leaveWhatsThisMode();
}

void QWhatsThis_showText_pos_text(QPoint* pos, struct seaqt_string text) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QWhatsThis::showText(*pos, text_QString);
}

void QWhatsThis_hideText() {
	QWhatsThis::hideText();
}

QAction* QWhatsThis_createAction() {
	return QWhatsThis::createAction();
}

void QWhatsThis_showText_pos_text_w(QPoint* pos, struct seaqt_string text, QWidget* w) {
	QString text_QString = QString::fromUtf8(text.data, text.len);
	QWhatsThis::showText(*pos, text_QString, w);
}

QAction* QWhatsThis_createAction_parent(QObject* parent) {
	return QWhatsThis::createAction(parent);
}

void QWhatsThis_delete(QWhatsThis* self) {
	delete self;
}

