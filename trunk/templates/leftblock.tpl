<div id="left">
<h3>left</h3>
<pre>Test
</pre>

<h3>Warning</h3>

<p>

{* bold and title are read from the config file *}
{if #bold#}<b>{/if}
{* capitalize the first letters of each word of the title *}
Title: {#title#|capitalize}
{if #bold#}</b>{/if}

The current date and time is {$smarty.now|date_format:"%Y-%m-%d %H:%M:%S"}</p><p>

The value of global assigned variable $SCRIPT_NAME is {$SCRIPT_NAME}</p><p>

Example of accessing server environment variable SERVER_NAME: {$smarty.server.SERVER_NAME}</p><p>

The value of {ldelim}$name{rdelim} is <b>{$name}</b></p><p>

variable modifier example of {ldelim}$name|upper{rdelim} <b>{$name|upper}</b><br/></p>

<p>

<img src="templates/images/xhtml10.gif" alt="" border="0" height="15" width="80"><br>
<img src="templates/images/css.gif" alt="css" border="0" height="15" width="80"><br>
<!-- Creative Commons License -->
<a rel="license" href="http://creativecommons.org/licenses/by/1.0/"><img src="templates/images/cc.gif" alt="Creative Commons License" border="0" height="15" width="80"></a><br>
This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by/1.0/">Creative Commons License</a>.
<!-- /Creative Commons License -->
<br>
<br>
</p>
</div>