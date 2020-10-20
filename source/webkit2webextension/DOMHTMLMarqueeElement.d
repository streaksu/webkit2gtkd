module webkit2webextension.DOMHTMLMarqueeElement;

private import webkit2webextension.DOMHTMLElement;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMHTMLMarqueeElement : DOMHTMLElement
{
	/** the main Gtk struct */
	protected WebKitDOMHTMLMarqueeElement* webKitDOMHTMLMarqueeElement;

	/** Get the main Gtk struct */
	public WebKitDOMHTMLMarqueeElement* getDOMHTMLMarqueeElementStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMHTMLMarqueeElement;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMHTMLMarqueeElement;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMHTMLMarqueeElement* webKitDOMHTMLMarqueeElement, bool ownedRef = false)
	{
		this.webKitDOMHTMLMarqueeElement = webKitDOMHTMLMarqueeElement;
		super(cast(WebKitDOMHTMLElement*)webKitDOMHTMLMarqueeElement, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_html_marquee_element_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void start()
	{
		webkit_dom_html_marquee_element_start(webKitDOMHTMLMarqueeElement);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 */
	public void stop()
	{
		webkit_dom_html_marquee_element_stop(webKitDOMHTMLMarqueeElement);
	}
}
