module webkit2.InputMethodContext;

private import glib.ListG;
private import glib.Str;
private import gobject.ObjectG;
private import gobject.Signals;
private import std.algorithm;
private import webkit2.InputMethodUnderline;
private import webkit2.c.functions;
public  import webkit2.c.types;


/**
 * WebKitInputMethodContext defines the interface to implement WebKit input methods.
 * The input methods are used by WebKit, when editable content is focused, to map from
 * key events to Unicode character strings.
 * 
 * An input method may consume multiple key events in sequence and finally
 * output the composed result. This is called preediting, and an input method
 * may provide feedback about this process by displaying the intermediate
 * composition states as preedit text.
 *
 * Since: 2.28
 */
public class InputMethodContext : ObjectG
{
	/** the main Gtk struct */
	protected WebKitInputMethodContext* webKitInputMethodContext;

	/** Get the main Gtk struct */
	public WebKitInputMethodContext* getInputMethodContextStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitInputMethodContext;
	}

	/** the main Gtk struct as a void* */
	protected override void* getStruct()
	{
		return cast(void*)webKitInputMethodContext;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitInputMethodContext* webKitInputMethodContext, bool ownedRef = false)
	{
		this.webKitInputMethodContext = webKitInputMethodContext;
		super(cast(GObject*)webKitInputMethodContext, ownedRef);
	}


	/** */
	public static GType getType()
	{
		return webkit_input_method_context_get_type();
	}

	/**
	 * Allow @key_event to be handled by the input method. If %TRUE is returned, then no further processing should be
	 * done for the key event.
	 *
	 * Params:
	 *     keyEvent = the key event to filter
	 *
	 * Returns: %TRUE if the key event was handled, or %FALSE otherwise
	 *
	 * Since: 2.28
	 */
	public bool filterKeyEvent(GdkEventKey* keyEvent)
	{
		return webkit_input_method_context_filter_key_event(webKitInputMethodContext, keyEvent) != 0;
	}

	/**
	 * Get the value of the #WebKitInputMethodContext:input-hints property.
	 *
	 * Returns: the #WebKitInputHints of the input associated with @context
	 *
	 * Since: 2.28
	 */
	public WebKitInputHints getInputHints()
	{
		return webkit_input_method_context_get_input_hints(webKitInputMethodContext);
	}

	/**
	 * Get the value of the #WebKitInputMethodContext:input-purpose property.
	 *
	 * Returns: the #WebKitInputPurpose of the input associated with @context
	 *
	 * Since: 2.28
	 */
	public WebKitInputPurpose getInputPurpose()
	{
		return webkit_input_method_context_get_input_purpose(webKitInputMethodContext);
	}

	/**
	 * Get the current preedit string for the @context, and a list of WebKitInputMethodUnderline to apply to the string.
	 * The string will be displayed inserted at @cursor_offset.
	 *
	 * Params:
	 *     text = location to store the preedit string
	 *     underlines = location to store the underlines as a #GList of #WebKitInputMethodUnderline
	 *     cursorOffset = location to store the position of cursor in preedit string
	 *
	 * Since: 2.28
	 */
	public void getPreedit(out string text, out ListG underlines, out uint cursorOffset)
	{
		char* outtext = null;
		GList* outunderlines = null;

		webkit_input_method_context_get_preedit(webKitInputMethodContext, &outtext, &outunderlines, &cursorOffset);

		text = Str.toString(outtext);
		underlines = new ListG(outunderlines);
	}

	/**
	 * Notify @context that cursor area changed in input associated.
	 *
	 * Params:
	 *     x = the x coordinate of cursor location
	 *     y = the y coordinate of cursor location
	 *     width = the width of cursor area
	 *     height = the height of cursor area
	 *
	 * Since: 2.28
	 */
	public void notifyCursorArea(int x, int y, int width, int height)
	{
		webkit_input_method_context_notify_cursor_area(webKitInputMethodContext, x, y, width, height);
	}

	/**
	 * Notify @context that input associated has gained focus.
	 *
	 * Since: 2.28
	 */
	public void notifyFocusIn()
	{
		webkit_input_method_context_notify_focus_in(webKitInputMethodContext);
	}

	/**
	 * Notify @context that input associated has lost focus.
	 *
	 * Since: 2.28
	 */
	public void notifyFocusOut()
	{
		webkit_input_method_context_notify_focus_out(webKitInputMethodContext);
	}

	/**
	 * Notify @context that the context surrounding the cursor has changed.
	 * If there's no selection @selection_index is the same as @cursor_index.
	 *
	 * Params:
	 *     text = text surrounding the insertion point
	 *     length = the length of @text, or -1 if @text is nul-terminated
	 *     cursorIndex = the byte index of the insertion cursor within @text.
	 *     selectionIndex = the byte index of the selection cursor within @text.
	 *
	 * Since: 2.28
	 */
	public void notifySurrounding(string text, int length, uint cursorIndex, uint selectionIndex)
	{
		webkit_input_method_context_notify_surrounding(webKitInputMethodContext, Str.toStringz(text), length, cursorIndex, selectionIndex);
	}

	/**
	 * Reset the @context. This will typically cause the input to clear the preedit state.
	 *
	 * Since: 2.28
	 */
	public void reset()
	{
		webkit_input_method_context_reset(webKitInputMethodContext);
	}

	/**
	 * Set whether @context should enable preedit to display feedback.
	 *
	 * Params:
	 *     enabled = whether to enable preedit
	 *
	 * Since: 2.28
	 */
	public void setEnablePreedit(bool enabled)
	{
		webkit_input_method_context_set_enable_preedit(webKitInputMethodContext, enabled);
	}

	/** */
	public void setInputHints(WebKitInputHints hints)
	{
		webkit_input_method_context_set_input_hints(webKitInputMethodContext, hints);
	}

	/**
	 * Set the value of the #WebKitInputMethodContext:input-purpose property.
	 *
	 * Params:
	 *     purpose = a #WebKitInputPurpose
	 *
	 * Since: 2.28
	 */
	public void setInputPurpose(WebKitInputPurpose purpose)
	{
		webkit_input_method_context_set_input_purpose(webKitInputMethodContext, purpose);
	}

	/**
	 * Emitted when a complete input sequence has been entered by the user.
	 * This can be a single character immediately after a key press or the
	 * final result of preediting.
	 *
	 * Params:
	 *     text = the string result
	 *
	 * Since: 2.28
	 */
	gulong addOnCommitted(void delegate(string, InputMethodContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "committed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when the input method wants to delete the context surrounding the cursor.
	 * If @offset is a negative value, it means a position before the cursor.
	 *
	 * Params:
	 *     offset = the character offset from the cursor position of the text to be deleted.
	 *     nChars = the number of characters to be deleted
	 *
	 * Since: 2.28
	 */
	gulong addOnDeleteSurrounding(void delegate(int, uint, InputMethodContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "delete-surrounding", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted whenever the preedit sequence currently being entered has changed.
	 * It is also emitted at the end of a preedit sequence, in which case
	 * webkit_input_method_context_get_preedit() returns the empty string.
	 *
	 * Since: 2.28
	 */
	gulong addOnPreeditChanged(void delegate(InputMethodContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-changed", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a preediting sequence has been completed or canceled.
	 *
	 * Since: 2.28
	 */
	gulong addOnPreeditFinished(void delegate(InputMethodContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-finished", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}

	/**
	 * Emitted when a new preediting sequence starts.
	 *
	 * Since: 2.28
	 */
	gulong addOnPreeditStarted(void delegate(InputMethodContext) dlg, ConnectFlags connectFlags=cast(ConnectFlags)0)
	{
		return Signals.connect(this, "preedit-started", dlg, connectFlags ^ ConnectFlags.SWAPPED);
	}
}
