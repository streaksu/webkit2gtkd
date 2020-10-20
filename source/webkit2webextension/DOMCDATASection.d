module webkit2webextension.DOMCDATASection;

private import webkit2webextension.DOMText;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMCDATASection : DOMText
{
	/** the main Gtk struct */
	protected WebKitDOMCDATASection* webKitDOMCDATASection;

	/** Get the main Gtk struct */
	public WebKitDOMCDATASection* getDOMCDATASectionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMCDATASection;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMCDATASection;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMCDATASection* webKitDOMCDATASection, bool ownedRef = false)
	{
		this.webKitDOMCDATASection = webKitDOMCDATASection;
		super(cast(WebKitDOMText*)webKitDOMCDATASection, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_cdata_section_get_type();
	}
}
