module webkit2webextension.DOMComment;

private import webkit2webextension.DOMCharacterData;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMComment : DOMCharacterData
{
	/** the main Gtk struct */
	protected WebKitDOMComment* webKitDOMComment;

	/** Get the main Gtk struct */
	public WebKitDOMComment* getDOMCommentStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMComment;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMComment;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMComment* webKitDOMComment, bool ownedRef = false)
	{
		this.webKitDOMComment = webKitDOMComment;
		super(cast(WebKitDOMCharacterData*)webKitDOMComment, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_comment_get_type();
	}
}
