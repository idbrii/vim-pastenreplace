Paste 'n' Replace
=================

A simple plugin for transforming text on the clipboard in vim.

Sometimes you want to process a bunch of text and doing it
directly in vim or in the shell is not possible -- like text in
Confluence, on the web, or from a Word document. pastenreplace
lets you setup a buffer to paste and automatically perform a vim
command when vim gains focus.


Usage
=====

Activate pastenreplace in an empty buffer:

	:PasteAndReplaceStart %s/Kingly/Royal/g

Switch from vim to your web browser, copy some text, switch back to vim. The
text will be pasted, transformed, and yanked back to the clipboard.

When you're done with pastenreplace, the stop command ends the automatic
behavior:

	:PasteAndReplaceStop

Alternatively, you can delete the buffer. pastenreplace is entirely
buffer-local and works great with scratch buffers.


Advanced Usage
==============

The argument passed to PasteAndReplaceStart are passed directly to `:exec` so
they can be a sequence of commands:

	" Process some perforce output: remove notification for files that haven't
	" changed and remove junk after the hyphen.
	:PasteAndReplaceStart g/up-to-date/d|%sm/ - .*


Registers
=========

pastenreplace pastes from `@+` (the system clipboard) but yanks to the unnamed
register. See documentation for 'clipboard' to determine how this yank behavior
works for your configuration.
