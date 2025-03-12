#include <QList>
#include <QPageLayout>
#include <QPagedPaintDevice>
#define WORKAROUND_INNER_CLASS_DEFINITION_QPagedPaintDevice__Margins
#include <QPaintDevice>
#include <QPaintEngine>
#include <QPainter>
#include <QPoint>
#include <QPrintEngine>
#include <QPrinter>
#include <QPrinterInfo>
#include <QRect>
#include <QRectF>
#include <QSizeF>
#include <QString>
#include <QByteArray>
#include <cstring>
#include <qprinter.h>
#include "gen_qprinter.h"
class VirtualQPrinter final : public QPrinter {
	const QPrinter_VTable* vtbl;
	void* vdata;
public:
	friend const QPrinter_VTable* QPrinter_vtbl(const VirtualQPrinter* self);
	friend void* QPrinter_vdata(const VirtualQPrinter* self);
	friend void QPrinter_setVdata(VirtualQPrinter* self, void* vdata);

	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata): QPrinter(), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata, const QPrinterInfo& printer): QPrinter(printer), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata, QPrinter::PrinterMode mode): QPrinter(mode), vtbl(vtbl), vdata(vdata) {}
	VirtualQPrinter(const QPrinter_VTable* vtbl, void* vdata, const QPrinterInfo& printer, QPrinter::PrinterMode mode): QPrinter(printer, mode), vtbl(vtbl), vdata(vdata) {}

	virtual ~VirtualQPrinter() override { if(vtbl->destructor) vtbl->destructor(this); }

	virtual int devType() const override {
		if (vtbl->devType == 0) {
			return QPrinter::devType();
		}


		int callback_return_value = vtbl->devType(this);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrinter_virtualbase_devType(const VirtualQPrinter* self);

	virtual void setPageSize(QPagedPaintDevice::PageSize pageSize) override {
		if (vtbl->setPageSize == 0) {
			QPrinter::setPageSize(pageSize);
			return;
		}

		QPagedPaintDevice::PageSize pageSize_ret = pageSize;
		int sigval1 = static_cast<int>(pageSize_ret);

		vtbl->setPageSize(this, sigval1);

	}

	friend void QPrinter_virtualbase_setPageSize(VirtualQPrinter* self, int pageSize);

	virtual void setPageSizeMM(const QSizeF& size) override {
		if (vtbl->setPageSizeMM == 0) {
			QPrinter::setPageSizeMM(size);
			return;
		}

		const QSizeF& size_ret = size;
		// Cast returned reference into pointer
		QSizeF* sigval1 = const_cast<QSizeF*>(&size_ret);

		vtbl->setPageSizeMM(this, sigval1);

	}

	friend void QPrinter_virtualbase_setPageSizeMM(VirtualQPrinter* self, QSizeF* size);

	virtual bool newPage() override {
		if (vtbl->newPage == 0) {
			return QPrinter::newPage();
		}


		bool callback_return_value = vtbl->newPage(this);

		return callback_return_value;
	}

	friend bool QPrinter_virtualbase_newPage(VirtualQPrinter* self);

	virtual QPaintEngine* paintEngine() const override {
		if (vtbl->paintEngine == 0) {
			return QPrinter::paintEngine();
		}


		QPaintEngine* callback_return_value = vtbl->paintEngine(this);

		return callback_return_value;
	}

	friend QPaintEngine* QPrinter_virtualbase_paintEngine(const VirtualQPrinter* self);

	virtual void setMargins(const QPagedPaintDevice::Margins& m) override {
		if (vtbl->setMargins == 0) {
			QPrinter::setMargins(m);
			return;
		}

		const QPagedPaintDevice::Margins& m_ret = m;
		// Cast returned reference into pointer
		QPagedPaintDevice__Margins* sigval1 = const_cast<QPagedPaintDevice::Margins*>(&m_ret);

		vtbl->setMargins(this, sigval1);

	}

	friend void QPrinter_virtualbase_setMargins(VirtualQPrinter* self, QPagedPaintDevice__Margins* m);

	virtual int metric(QPaintDevice::PaintDeviceMetric param1) const override {
		if (vtbl->metric == 0) {
			return QPrinter::metric(param1);
		}

		QPaintDevice::PaintDeviceMetric param1_ret = param1;
		int sigval1 = static_cast<int>(param1_ret);

		int callback_return_value = vtbl->metric(this, sigval1);

		return static_cast<int>(callback_return_value);
	}

	friend int QPrinter_virtualbase_metric(const VirtualQPrinter* self, int param1);

	virtual void initPainter(QPainter* painter) const override {
		if (vtbl->initPainter == 0) {
			QPrinter::initPainter(painter);
			return;
		}

		QPainter* sigval1 = painter;

		vtbl->initPainter(this, sigval1);

	}

	friend void QPrinter_virtualbase_initPainter(const VirtualQPrinter* self, QPainter* painter);

	virtual QPaintDevice* redirected(QPoint* offset) const override {
		if (vtbl->redirected == 0) {
			return QPrinter::redirected(offset);
		}

		QPoint* sigval1 = offset;

		QPaintDevice* callback_return_value = vtbl->redirected(this, sigval1);

		return callback_return_value;
	}

	friend QPaintDevice* QPrinter_virtualbase_redirected(const VirtualQPrinter* self, QPoint* offset);

	virtual QPainter* sharedPainter() const override {
		if (vtbl->sharedPainter == 0) {
			return QPrinter::sharedPainter();
		}


		QPainter* callback_return_value = vtbl->sharedPainter(this);

		return callback_return_value;
	}

	friend QPainter* QPrinter_virtualbase_sharedPainter(const VirtualQPrinter* self);

	// Wrappers to allow calling protected methods:
	friend void QPrinter_protectedbase_setEngines(VirtualQPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine);
	friend QPageLayout* QPrinter_protectedbase_devicePageLayout(const VirtualQPrinter* self);
};

VirtualQPrinter* QPrinter_new(const QPrinter_VTable* vtbl, void* vdata) {
	return new VirtualQPrinter(vtbl, vdata);
}

VirtualQPrinter* QPrinter_new2(const QPrinter_VTable* vtbl, void* vdata, QPrinterInfo* printer) {
	return new VirtualQPrinter(vtbl, vdata, *printer);
}

VirtualQPrinter* QPrinter_new3(const QPrinter_VTable* vtbl, void* vdata, int mode) {
	return new VirtualQPrinter(vtbl, vdata, static_cast<QPrinter::PrinterMode>(mode));
}

VirtualQPrinter* QPrinter_new4(const QPrinter_VTable* vtbl, void* vdata, QPrinterInfo* printer, int mode) {
	return new VirtualQPrinter(vtbl, vdata, *printer, static_cast<QPrinter::PrinterMode>(mode));
}

void QPrinter_virtbase(QPrinter* src, QPagedPaintDevice** outptr_QPagedPaintDevice) {
	*outptr_QPagedPaintDevice = static_cast<QPagedPaintDevice*>(src);
}

int QPrinter_devType(const QPrinter* self) {
	return self->devType();
}

void QPrinter_setOutputFormat(QPrinter* self, int format) {
	self->setOutputFormat(static_cast<QPrinter::OutputFormat>(format));
}

int QPrinter_outputFormat(const QPrinter* self) {
	QPrinter::OutputFormat _ret = self->outputFormat();
	return static_cast<int>(_ret);
}

void QPrinter_setPdfVersion(QPrinter* self, int version) {
	self->setPdfVersion(static_cast<QPagedPaintDevice::PdfVersion>(version));
}

int QPrinter_pdfVersion(const QPrinter* self) {
	QPagedPaintDevice::PdfVersion _ret = self->pdfVersion();
	return static_cast<int>(_ret);
}

void QPrinter_setPrinterName(QPrinter* self, struct miqt_string printerName) {
	QString printerName_QString = QString::fromUtf8(printerName.data, printerName.len);
	self->setPrinterName(printerName_QString);
}

struct miqt_string QPrinter_printerName(const QPrinter* self) {
	QString _ret = self->printerName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

bool QPrinter_isValid(const QPrinter* self) {
	return self->isValid();
}

void QPrinter_setOutputFileName(QPrinter* self, struct miqt_string outputFileName) {
	QString outputFileName_QString = QString::fromUtf8(outputFileName.data, outputFileName.len);
	self->setOutputFileName(outputFileName_QString);
}

struct miqt_string QPrinter_outputFileName(const QPrinter* self) {
	QString _ret = self->outputFileName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setPrintProgram(QPrinter* self, struct miqt_string printProgram) {
	QString printProgram_QString = QString::fromUtf8(printProgram.data, printProgram.len);
	self->setPrintProgram(printProgram_QString);
}

struct miqt_string QPrinter_printProgram(const QPrinter* self) {
	QString _ret = self->printProgram();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setDocName(QPrinter* self, struct miqt_string docName) {
	QString docName_QString = QString::fromUtf8(docName.data, docName.len);
	self->setDocName(docName_QString);
}

struct miqt_string QPrinter_docName(const QPrinter* self) {
	QString _ret = self->docName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setCreator(QPrinter* self, struct miqt_string creator) {
	QString creator_QString = QString::fromUtf8(creator.data, creator.len);
	self->setCreator(creator_QString);
}

struct miqt_string QPrinter_creator(const QPrinter* self) {
	QString _ret = self->creator();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setOrientation(QPrinter* self, int orientation) {
	self->setOrientation(static_cast<QPrinter::Orientation>(orientation));
}

int QPrinter_orientation(const QPrinter* self) {
	QPrinter::Orientation _ret = self->orientation();
	return static_cast<int>(_ret);
}

void QPrinter_setPageSize(QPrinter* self, int pageSize) {
	self->setPageSize(static_cast<QPagedPaintDevice::PageSize>(pageSize));
}

int QPrinter_pageSize(const QPrinter* self) {
	QPagedPaintDevice::PageSize _ret = self->pageSize();
	return static_cast<int>(_ret);
}

void QPrinter_setPageSizeMM(QPrinter* self, QSizeF* size) {
	self->setPageSizeMM(*size);
}

void QPrinter_setPaperSize(QPrinter* self, int paperSize) {
	self->setPaperSize(static_cast<QPrinter::PaperSize>(paperSize));
}

int QPrinter_paperSize(const QPrinter* self) {
	QPrinter::PaperSize _ret = self->paperSize();
	return static_cast<int>(_ret);
}

void QPrinter_setPaperSize2(QPrinter* self, QSizeF* paperSize, int unit) {
	self->setPaperSize(*paperSize, static_cast<QPrinter::Unit>(unit));
}

QSizeF* QPrinter_paperSizeWithUnit(const QPrinter* self, int unit) {
	return new QSizeF(self->paperSize(static_cast<QPrinter::Unit>(unit)));
}

void QPrinter_setPaperName(QPrinter* self, struct miqt_string paperName) {
	QString paperName_QString = QString::fromUtf8(paperName.data, paperName.len);
	self->setPaperName(paperName_QString);
}

struct miqt_string QPrinter_paperName(const QPrinter* self) {
	QString _ret = self->paperName();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setPageOrder(QPrinter* self, int pageOrder) {
	self->setPageOrder(static_cast<QPrinter::PageOrder>(pageOrder));
}

int QPrinter_pageOrder(const QPrinter* self) {
	QPrinter::PageOrder _ret = self->pageOrder();
	return static_cast<int>(_ret);
}

void QPrinter_setResolution(QPrinter* self, int resolution) {
	self->setResolution(static_cast<int>(resolution));
}

int QPrinter_resolution(const QPrinter* self) {
	return self->resolution();
}

void QPrinter_setColorMode(QPrinter* self, int colorMode) {
	self->setColorMode(static_cast<QPrinter::ColorMode>(colorMode));
}

int QPrinter_colorMode(const QPrinter* self) {
	QPrinter::ColorMode _ret = self->colorMode();
	return static_cast<int>(_ret);
}

void QPrinter_setCollateCopies(QPrinter* self, bool collate) {
	self->setCollateCopies(collate);
}

bool QPrinter_collateCopies(const QPrinter* self) {
	return self->collateCopies();
}

void QPrinter_setFullPage(QPrinter* self, bool fullPage) {
	self->setFullPage(fullPage);
}

bool QPrinter_fullPage(const QPrinter* self) {
	return self->fullPage();
}

void QPrinter_setNumCopies(QPrinter* self, int numCopies) {
	self->setNumCopies(static_cast<int>(numCopies));
}

int QPrinter_numCopies(const QPrinter* self) {
	return self->numCopies();
}

int QPrinter_actualNumCopies(const QPrinter* self) {
	return self->actualNumCopies();
}

void QPrinter_setCopyCount(QPrinter* self, int copyCount) {
	self->setCopyCount(static_cast<int>(copyCount));
}

int QPrinter_copyCount(const QPrinter* self) {
	return self->copyCount();
}

bool QPrinter_supportsMultipleCopies(const QPrinter* self) {
	return self->supportsMultipleCopies();
}

void QPrinter_setPaperSource(QPrinter* self, int paperSource) {
	self->setPaperSource(static_cast<QPrinter::PaperSource>(paperSource));
}

int QPrinter_paperSource(const QPrinter* self) {
	QPrinter::PaperSource _ret = self->paperSource();
	return static_cast<int>(_ret);
}

void QPrinter_setDuplex(QPrinter* self, int duplex) {
	self->setDuplex(static_cast<QPrinter::DuplexMode>(duplex));
}

int QPrinter_duplex(const QPrinter* self) {
	QPrinter::DuplexMode _ret = self->duplex();
	return static_cast<int>(_ret);
}

struct miqt_array /* of int */  QPrinter_supportedResolutions(const QPrinter* self) {
	QList<int> _ret = self->supportedResolutions();
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

void QPrinter_setFontEmbeddingEnabled(QPrinter* self, bool enable) {
	self->setFontEmbeddingEnabled(enable);
}

bool QPrinter_fontEmbeddingEnabled(const QPrinter* self) {
	return self->fontEmbeddingEnabled();
}

void QPrinter_setDoubleSidedPrinting(QPrinter* self, bool enable) {
	self->setDoubleSidedPrinting(enable);
}

bool QPrinter_doubleSidedPrinting(const QPrinter* self) {
	return self->doubleSidedPrinting();
}

void QPrinter_setWinPageSize(QPrinter* self, int winPageSize) {
	self->setWinPageSize(static_cast<int>(winPageSize));
}

int QPrinter_winPageSize(const QPrinter* self) {
	return self->winPageSize();
}

QRect* QPrinter_paperRect(const QPrinter* self) {
	return new QRect(self->paperRect());
}

QRect* QPrinter_pageRect(const QPrinter* self) {
	return new QRect(self->pageRect());
}

QRectF* QPrinter_paperRectWithQPrinterUnit(const QPrinter* self, int param1) {
	return new QRectF(self->paperRect(static_cast<QPrinter::Unit>(param1)));
}

QRectF* QPrinter_pageRectWithQPrinterUnit(const QPrinter* self, int param1) {
	return new QRectF(self->pageRect(static_cast<QPrinter::Unit>(param1)));
}

struct miqt_string QPrinter_printerSelectionOption(const QPrinter* self) {
	QString _ret = self->printerSelectionOption();
	// Convert QString from UTF-16 in C++ RAII memory to UTF-8 in manually-managed C memory
	QByteArray _b = _ret.toUtf8();
	struct miqt_string _ms;
	_ms.len = _b.length();
	_ms.data = static_cast<char*>(malloc(_ms.len));
	memcpy(_ms.data, _b.data(), _ms.len);
	return _ms;
}

void QPrinter_setPrinterSelectionOption(QPrinter* self, struct miqt_string printerSelectionOption) {
	QString printerSelectionOption_QString = QString::fromUtf8(printerSelectionOption.data, printerSelectionOption.len);
	self->setPrinterSelectionOption(printerSelectionOption_QString);
}

bool QPrinter_newPage(QPrinter* self) {
	return self->newPage();
}

bool QPrinter_abort(QPrinter* self) {
	return self->abort();
}

int QPrinter_printerState(const QPrinter* self) {
	QPrinter::PrinterState _ret = self->printerState();
	return static_cast<int>(_ret);
}

QPaintEngine* QPrinter_paintEngine(const QPrinter* self) {
	return self->paintEngine();
}

QPrintEngine* QPrinter_printEngine(const QPrinter* self) {
	return self->printEngine();
}

void QPrinter_setFromTo(QPrinter* self, int fromPage, int toPage) {
	self->setFromTo(static_cast<int>(fromPage), static_cast<int>(toPage));
}

int QPrinter_fromPage(const QPrinter* self) {
	return self->fromPage();
}

int QPrinter_toPage(const QPrinter* self) {
	return self->toPage();
}

void QPrinter_setPrintRange(QPrinter* self, int range) {
	self->setPrintRange(static_cast<QPrinter::PrintRange>(range));
}

int QPrinter_printRange(const QPrinter* self) {
	QPrinter::PrintRange _ret = self->printRange();
	return static_cast<int>(_ret);
}

void QPrinter_setMargins(QPrinter* self, QPagedPaintDevice__Margins* m) {
	self->setMargins(*m);
}

void QPrinter_setPageMargins(QPrinter* self, double left, double top, double right, double bottom, int unit) {
	self->setPageMargins(static_cast<qreal>(left), static_cast<qreal>(top), static_cast<qreal>(right), static_cast<qreal>(bottom), static_cast<QPrinter::Unit>(unit));
}

void QPrinter_getPageMargins(const QPrinter* self, double* left, double* top, double* right, double* bottom, int unit) {
	self->getPageMargins(static_cast<qreal*>(left), static_cast<qreal*>(top), static_cast<qreal*>(right), static_cast<qreal*>(bottom), static_cast<QPrinter::Unit>(unit));
}

int QPrinter_virtualbase_devType(const VirtualQPrinter* self) {

	return self->QPrinter::devType();
}

void QPrinter_virtualbase_setPageSize(VirtualQPrinter* self, int pageSize) {

	self->QPrinter::setPageSize(static_cast<VirtualQPrinter::PageSize>(pageSize));
}

void QPrinter_virtualbase_setPageSizeMM(VirtualQPrinter* self, QSizeF* size) {

	self->QPrinter::setPageSizeMM(*size);
}

bool QPrinter_virtualbase_newPage(VirtualQPrinter* self) {

	return self->QPrinter::newPage();
}

QPaintEngine* QPrinter_virtualbase_paintEngine(const VirtualQPrinter* self) {

	return self->QPrinter::paintEngine();
}

void QPrinter_virtualbase_setMargins(VirtualQPrinter* self, QPagedPaintDevice__Margins* m) {

	self->QPrinter::setMargins(*m);
}

int QPrinter_virtualbase_metric(const VirtualQPrinter* self, int param1) {

	return self->QPrinter::metric(static_cast<VirtualQPrinter::PaintDeviceMetric>(param1));
}

void QPrinter_virtualbase_initPainter(const VirtualQPrinter* self, QPainter* painter) {

	self->QPrinter::initPainter(painter);
}

QPaintDevice* QPrinter_virtualbase_redirected(const VirtualQPrinter* self, QPoint* offset) {

	return self->QPrinter::redirected(offset);
}

QPainter* QPrinter_virtualbase_sharedPainter(const VirtualQPrinter* self) {

	return self->QPrinter::sharedPainter();
}

const QPrinter_VTable* QPrinter_vtbl(const VirtualQPrinter* self) { return self->vtbl; }
void* QPrinter_vdata(const VirtualQPrinter* self) { return self->vdata; }
void QPrinter_setVdata(VirtualQPrinter* self, void* vdata) { self->vdata = vdata; }

void QPrinter_protectedbase_setEngines(VirtualQPrinter* self, QPrintEngine* printEngine, QPaintEngine* paintEngine) {
	self->setEngines(printEngine, paintEngine);
}

QPageLayout* QPrinter_protectedbase_devicePageLayout(const VirtualQPrinter* self) {
	return new QPageLayout(self->devicePageLayout());
}

void QPrinter_delete(QPrinter* self) {
	delete self;
}

