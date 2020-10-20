module webkit2.EditorState;

private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitEditorState represents the state of a #WebKitWebView editor.
 * Use webkit_web_view_get_editor_state() to get the WebKitEditorState
 * of a #WebKitWebView.
 *
 * Since: 2.10
 */
public class EditorState : ObjectG
{
	/** the main Gtk struct */
	protected WebKitEditorState* webKitEditorState;

	/** Get the main Gtk struct */
	public WebKitEditorState* getEditorStateStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitEditorState;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitEditorState;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitEditorState* webKitEditorState, bool ownedRef = false)
	{
		this.webKitEditorState = webKitEditorState;
		super(cast(GObject*)webKitEditorState, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_editor_state_get_type();
	}

	/**
	 * Gets the typing attributes at the current cursor position.
	 * If there is a selection, this returns the typing attributes
	 * of the selected text. Note that in case of a selection,
	 * typing attributes are considered active only when they are
	 * present throughout the selection.
	 *
	 * Returns: a bitmask of #WebKitEditorTypingAttributes flags
	 *
	 * Since: 2.10
	 */
	public uint getTypingAttributes()
	{
		return webkit_editor_state_get_typing_attributes(webKitEditorState);
	}

	/**
	 * Gets whether a copy command can be issued.
	 *
	 * Returns: %TRUE if copy is currently available
	 *
	 * Since: 2.20
	 */
	public bool isCopyAvailable()
	{
		return webkit_editor_state_is_copy_available(webKitEditorState) != 0;
	}

	/**
	 * Gets whether a cut command can be issued.
	 *
	 * Returns: %TRUE if cut is currently available
	 *
	 * Since: 2.20
	 */
	public bool isCutAvailable()
	{
		return webkit_editor_state_is_cut_available(webKitEditorState) != 0;
	}

	/**
	 * Gets whether a paste command can be issued.
	 *
	 * Returns: %TRUE if paste is currently available
	 *
	 * Since: 2.20
	 */
	public bool isPasteAvailable()
	{
		return webkit_editor_state_is_paste_available(webKitEditorState) != 0;
	}

	/**
	 * Gets whether a redo command can be issued.
	 *
	 * Returns: %TRUE if redo is currently available
	 *
	 * Since: 2.20
	 */
	public bool isRedoAvailable()
	{
		return webkit_editor_state_is_redo_available(webKitEditorState) != 0;
	}

	/**
	 * Gets whether an undo command can be issued.
	 *
	 * Returns: %TRUE if undo is currently available
	 *
	 * Since: 2.20
	 */
	public bool isUndoAvailable()
	{
		return webkit_editor_state_is_undo_available(webKitEditorState) != 0;
	}
}
