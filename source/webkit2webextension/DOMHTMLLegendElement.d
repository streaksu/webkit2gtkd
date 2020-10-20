module webkit2webextension.DOMHTMLLegendElement;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLLegendElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLLegendElement* webKitDOMHTMLLegendElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLLegendElement* getDOMHTMLLegendElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLLegendElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLLegendElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLLegendElement* webKitDOMHTMLLegendElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLLegendElement = webKitDOMHTMLLegendElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLLegendElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_legend_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getAlign()
	{
		auto retStr = webkit_dom_html_legend_element_get_align(webKitDOMHTMLLegendElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
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
		auto __p = webkit_dom_html_legend_element_get_form(webKitDOMHTMLLegendElement);

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
	 * Params:
	 *     value = A #gchar
	 */
	public void setAlign(string value)
	{
		webkit_dom_html_legend_element_set_align(webKitDOMHTMLLegendElement, Str.toStringz(value));
	}
}
