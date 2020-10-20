module webkit2.ScriptDialog;

private import glib.Str;
private import gobject.ObjectG;
private import webkit2.c.functions;
public  import webkit2.c.types;


/** */
public class ScriptDialog
{
	/** the main Gtk struct */
	protected WebKitScriptDialog* webKitScriptDialog;
	protected bool ownedRef;

	/** Get the main Gtk struct */
	public WebKitScriptDialog* getScriptDialogStruct(bool transferOwnership = false)
	{
		if (transferOwnership)
			ownedRef = false;
		return webKitScriptDialog;
	}

	/** the main Gtk struct as a void* */
	protected void* getStruct()
	{
		return cast(void*)webKitScriptDialog;
	}

	/**
	 * Sets our main struct and passes it to the parent class.
	 */
	public this (WebKitScriptDialog* webKitScriptDialog, bool ownedRef = false)
	{
		this.webKitScriptDialog = webKitScriptDialog;
		this.ownedRef = ownedRef;
	}

	~this ()
	{
		if ( ownedRef )
			webkit_script_dialog_unref(webKitScriptDialog);
	}


	/** */
	public static GType getType()
	{
		return webkit_script_dialog_get_type();
	}

	/**
	 * Close @dialog. When handling a #WebKitScriptDialog asynchronously (webkit_script_dialog_ref()
	 * was called in #WebKitWebView::script-dialog callback), this function needs to be called to notify
	 * that we are done with the script dialog. The dialog will be closed on destruction if this function
	 * hasn't been called before.
	 *
	 * Since: 2.24
	 */
	public void close()
	{
		webkit_script_dialog_close(webKitScriptDialog);
	}

	/**
	 * This method is used for %WEBKIT_SCRIPT_DIALOG_CONFIRM and %WEBKIT_SCRIPT_DIALOG_BEFORE_UNLOAD_CONFIRM dialogs when
	 * #WebKitWebView::script-dialog signal is emitted to set whether the user
	 * confirmed the dialog or not. The default implementation of #WebKitWebView::script-dialog
	 * signal sets %TRUE when the OK or Stay buttons are clicked and %FALSE otherwise.
	 * It's an error to use this method with a #WebKitScriptDialog that is not of type
	 * %WEBKIT_SCRIPT_DIALOG_CONFIRM or %WEBKIT_SCRIPT_DIALOG_BEFORE_UNLOAD_CONFIRM
	 *
	 * Params:
	 *     confirmed = whether user confirmed the dialog
	 */
	public void confirmSetConfirmed(bool confirmed)
	{
		webkit_script_dialog_confirm_set_confirmed(webKitScriptDialog, confirmed);
	}

	/**
	 * Get the dialog type of a #WebKitScriptDialog.
	 *
	 * Returns: the #WebKitScriptDialogType of @dialog
	 */
	public WebKitScriptDialogType getDialogType()
	{
		return webkit_script_dialog_get_dialog_type(webKitScriptDialog);
	}

	/**
	 * Get the message of a #WebKitScriptDialog.
	 *
	 * Returns: the message of @dialog.
	 */
	public string getMessage()
	{
		return Str.toString(webkit_script_dialog_get_message(webKitScriptDialog));
	}

	/**
	 * Get the default text of a #WebKitScriptDialog of type %WEBKIT_SCRIPT_DIALOG_PROMPT.
	 * It's an error to use this method with a #WebKitScriptDialog that is not of type
	 * %WEBKIT_SCRIPT_DIALOG_PROMPT.
	 *
	 * Returns: the default text of @dialog
	 */
	public string promptGetDefaultText()
	{
		return Str.toString(webkit_script_dialog_prompt_get_default_text(webKitScriptDialog));
	}

	/**
	 * This method is used for %WEBKIT_SCRIPT_DIALOG_PROMPT dialogs when
	 * #WebKitWebView::script-dialog signal is emitted to set the text
	 * entered by the user. The default implementation of #WebKitWebView::script-dialog
	 * signal sets the text of the entry form when OK button is clicked, otherwise %NULL is set.
	 * It's an error to use this method with a #WebKitScriptDialog that is not of type
	 * %WEBKIT_SCRIPT_DIALOG_PROMPT.
	 *
	 * Params:
	 *     text = the text to set
	 */
	public void promptSetText(string text)
	{
		webkit_script_dialog_prompt_set_text(webKitScriptDialog, Str.toStringz(text));
	}

	alias doref = ref_;
	/**
	 * Atomically increments the reference count of @dialog by one. This
	 * function is MT-safe and may be called from any thread.
	 *
	 * Returns: The passed in #WebKitScriptDialog
	 *
	 * Since: 2.24
	 */
	public ScriptDialog ref_()
	{
		auto __p = webkit_script_dialog_ref(webKitScriptDialog);

		if(__p is null)
		{
			return null;
		}

		return ObjectG.getDObject!(ScriptDialog)(cast(WebKitScriptDialog*) __p, true);
	}

	/**
	 * Atomically decrements the reference count of @dialog by one. If the
	 * reference count drops to 0, all memory allocated by the #WebKitScriptdialog is
	 * released. This function is MT-safe and may be called from any
	 * thread.
	 *
	 * Since: 2.24
	 */
	public void unref()
	{
		webkit_script_dialog_unref(webKitScriptDialog);
	}
}
