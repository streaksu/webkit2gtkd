module webkit2webextension.DOMHTMLFieldSetElement;

private import gobject.ObjectG;
private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.DOMHTMLFormElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLFieldSetElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLFieldSetElement* webKitDOMHTMLFieldSetElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLFieldSetElement* getDOMHTMLFieldSetElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLFieldSetElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLFieldSetElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLFieldSetElement* webKitDOMHTMLFieldSetElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLFieldSetElement = webKitDOMHTMLFieldSetElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLFieldSetElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_field_set_element_get_type();
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
		auto __p = webkit_dom_html_field_set_element_get_form(webKitDOMHTMLFieldSetElement);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMHTMLFormElement)(cast(WebKitDOMHTMLFormElement*) __p);
	}
}
