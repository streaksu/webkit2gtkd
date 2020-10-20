module webkit2webextension.DOMEntityReference;

private import webkit2webextension.DOMNode;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMEntityReference : DOMNode
{
	/** the main Gtk struct */
	protected WebKitDOMEntityReference* webKitDOMEntityReference;

	/** Get the main Gtk struct */
	public WebKitDOMEntityReference* getDOMEntityReferenceStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMEntityReference;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMEntityReference;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMEntityReference* webKitDOMEntityReference, bool ownedRef = false)
	{
		this.webKitDOMEntityReference = webKitDOMEntityReference;
		super(cast(WebKitDOMNode*)webKitDOMEntityReference, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_entity_reference_get_type();
	}
}
