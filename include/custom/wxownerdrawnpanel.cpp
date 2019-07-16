#include <hxcpp.h>
#include "wxownerdrawnpanel.h"

wxOwnerDrawnPanel::wxOwnerDrawnPanel(wxWindow* parent) : wxPanel() {
    SetBackgroundStyle(wxBackgroundStyle::wxBG_STYLE_TRANSPARENT);
    Create(parent, -1, wxDefaultPosition, wxDefaultSize, wxTRANSPARENT_WINDOW);
    Bind(wxEVT_PAINT, &wxOwnerDrawnPanel::onPaintInternal, this, -1);
}

void wxOwnerDrawnPanel::onPaintInternal(wxPaintEvent& evt) {
    wxPaintDC dc(this);
    wxGraphicsContext *gc = wxGraphicsContext::Create(dc);
    wxGCDC gdc(gc);
    this->pGCDC = &gdc; // be careful!

    if (hx::IsNotNull(onPaint)) {
        onPaint();
    }

    this->pGCDC = NULL;
}