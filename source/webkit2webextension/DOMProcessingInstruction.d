module webkit2webextension.DOMProcessingInstruction;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2webextension.DOMCharacterData;
private import webkit2webextension.DOMStyleSheet;
private import webkit2webextension.c.functions;
public  import webkit2webextension.c.types;


/** */
public class DOMProcessingInstruction : DOMCharacterData
{
	/** the main Gtk struct */
	protected WebKitDOMProcessingInstruction* webKitDOMProcessingInstruction;

	/** Get the main Gtk struct */
	public WebKitDOMProcessingInstruction* getDOMProcessingInstructionStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitDOMProcessingInstruction;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitDOMProcessingInstruction;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitDOMProcessingInstruction* webKitDOMProcessingInstruction, bool ownedRef = false)
	{
		this.webKitDOMProcessingInstruction = webKitDOMProcessingInstruction;
		super(cast(WebKitDOMCharacterData*)webKitDOMProcessingInstruction, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_dom_processing_instruction_get_type();
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #WebKitDOMStyleSheet
	 */
	public DOMStyleSheet getSheet()
	{
		auto __p = webkit_dom_processing_instruction_get_sheet(webKitDOMProcessingInstruction);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(DOMStyleSheet)(cast(WebKitDOMStyleSheet*) __p, true);
	}

	/**
	 *
	 *
	 * Deprecated: Use JavaScriptCore API instead
	 *
	 * Returns: A #gchar
	 */
	public string getTarget()
	{
		auto retStr = webkit_dom_processing_instruction_get_target(webKitDOMProcessingInstruction);

		scope(exit) Str.freeString(retStr);
		return Str.toString(retStr);
	}
}
