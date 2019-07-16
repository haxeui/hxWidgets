#ifndef _WX_OWNERDRAWNPANEL_H_
#define _WX_OWNERDRAWNPANEL_H_

#include <hxcpp.h>
#include <wx/dcclient.h>
#include <wx/panel.h>
#include <wx/dcgraph.h>

class wxOwnerDrawnPanel : public wxPanel {
    public:
        ::Dynamic onPaint;
        wxGCDC* pGCDC;

        wxOwnerDrawnPanel(wxWindow* parent);
        void onPaintInternal(wxPaintEvent& evt);
};

#endif