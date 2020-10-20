module webkit2webextension.DOMHTMLLabelElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLLabelElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLLabelElement* webKitDOMHTMLLabelElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLLabelElement* getDOMHTMLLabelElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLLabelElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLLabelElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLLabelElement* webKitDOMHTMLLabelElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLLabelElement = webKitDOMHTMLLabelElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLLabelElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_label_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMHTMLFormElement
	 */
	public DOMHTMLFormElement getForm()
	{
		auto __p = webkit_dom_html_label_element_get_form(webKitDOMHTMLLabelElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLFormElement)(cast(WebKitDOMHTMLFormElement*) __p);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getHtmlFor()
	{
		auto retStr = webkit_dom_html_label_element_get_html_for(webKitDOMHTMLLabelElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setHtmlFor(string value)
	{
		webkit_dom_html_label_element_set_html_for(webKitDOMHTMLLabelElement, Str.toStringz(value));
	}
}
