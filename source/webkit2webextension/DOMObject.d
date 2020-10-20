module webkit2webextension.DOMObject;

private import gobject.ObjectG;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMObject : ObjectG
{
	/** the main Gtk struct */
	protected WebKitDOMObject* webKitDOMObject;

	/** Get the main Gtk struct */
	public WebKitDOMObject* getDOMObjectStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMObject;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMObject;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMObject* webKitDOMObject, bool ownedRef = false)
	{
		this.webKitDOMObject = webKitDOMObject;
		super(cast(GObject*)webKitDOMObject, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_object_get_type();
	}
}
