#ifndef _WX_HARDBREAKWRAPPER_H_
#define _WX_HARDBREAKWRAPPER_H_

#include <wx/defs.h>
#include <wx/window.h>
#include <wx/textwrapper.h>

class wxHardBreakWrapper : public wxTextWrapper {
    public:
        wxHardBreakWrapper(wxWindow *win, const wxString& text, int widthMax) {
            Wrap(win, text, widthMax);
        }

        wxString const& GetWrapped() const { return m_wrapped; }
    protected:
        virtual void OnOutputLine(const wxString& line) {
            m_wrapped += line;
        }   
        
        virtual void OnNewLine() {
            m_wrapped += '\n';
        }

    private:
        wxString m_wrapped;    
};

#endif