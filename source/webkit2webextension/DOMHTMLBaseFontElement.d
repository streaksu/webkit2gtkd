module webkit2webextension.DOMHTMLBaseFontElement;

private import glib.Str;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLBaseFontElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLBaseFontElement* webKitDOMHTMLBaseFontElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLBaseFontElement* getDOMHTMLBaseFontElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLBaseFontElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLBaseFontElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLBaseFontElement* webKitDOMHTMLBaseFontElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLBaseFontElement = webKitDOMHTMLBaseFontElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLBaseFontElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_base_font_element_get_type();
	}

	/**
	 * This function has been removed from the DOM spec and it just returns %NULL.
	 *
	 * Returns: A #gchar
	 */
	public string getColor()
	{
		auto retStr = webkit_dom_html_base_font_element_get_color(webKitDOMHTMLBaseFontElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function has been removed from the DOM spec and it just returns %NULL.
	 *
	 * Returns: A #gchar
	 */
	public string getFace()
	{
		auto retStr = webkit_dom_html_base_font_element_get_face(webKitDOMHTMLBaseFontElement);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}

	/**
	 * This function has been removed from the DOM spec and it just returns 0.
	 *
	 * Returns: A #glong
	 */
	public glong getSize()
	{
		return webkit_dom_html_base_font_element_get_size(webKitDOMHTMLBaseFontElement);
	}

	/**
	 * This function has been removed from the DOM spec and it does nothing.
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setColor(string value)
	{
		webkit_dom_html_base_font_element_set_color(webKitDOMHTMLBaseFontElement, Str.toStringz(value));
	}

	/**
	 * This function has been removed from the DOM spec and it does nothing.
	 *
	 * Params:
	 *     value = A #gchar
	 */
	public void setFace(string value)
	{
		webkit_dom_html_base_font_element_set_face(webKitDOMHTMLBaseFontElement, Str.toStringz(value));
	}

	/**
	 * This function has been removed from the DOM spec and it does nothing.
	 *
	 * Params:
	 *     value = A #glong
	 */
	public void setSize(glong value)
	{
		webkit_dom_html_base_font_element_set_size(webKitDOMHTMLBaseFontElement, value);
	}
}
