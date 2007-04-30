<div id="middleleft">
<h3>middleleft</h3>

<pre>Test
</pre>

<h3>Calculations in your head</h3>
<p>

An example of a section loop:<br>

{section name=outer loop=$FirstName}
{if $smarty.section.outer.index is odd by 2}
	{$smarty.section.outer.rownum} . {$FirstName[outer]} {$LastName[outer]}<br>
{else}
	{$smarty.section.outer.rownum} * {$FirstName[outer]} {$LastName[outer]}<br>
{/if}
{sectionelse}
	none
{/section}
</p><p>
An example of section looped key values:<br>

{section name=sec1 loop=$contacts}
	phone: {$contacts[sec1].phone}<br>
	fax: {$contacts[sec1].fax}<br>
	cell: {$contacts[sec1].cell}<br>
{/section}
</p><p>

testing strip tags
{strip}
<table border=0>
	<tr>
		<td>
			<A HREF="{$SCRIPT_NAME}">
			<font color="red">This is a  test     </font>
			</A>
		</td>
	</tr>
</table>
{/strip}

</p>
<br>
<br>
</div>

<div id="middleright">
	<h3>middleright</h3>
	<pre>Test
</pre>
<h3>box border</h3>

<p>Borders, pading and margin are defined in</p>
	<pre>Test
</pre>
<h3>Font definitions</h3>
<p>

Example of the html_select_date function:
<form>
{html_select_date start_year=1998 end_year=2010}
</form>

</p><p>

Example of the html_select_time function:
<form>
{html_select_time use_24_hours=false}
</form>

</p><p>

Example of the html_options function:
<form>
<select name=states>
{html_options values=$option_values selected=$option_selected output=$option_output}
</select>
</form>

</p>
<br>
<br>
</div>

<div id="right">
<h3>right</h3>

<pre>Test
</pre>
<h3>open code</h3>
<p>Use of this code is encouraged! (o_.)/</p>
<p>Further examples and many links can be found at <a href="http://www.intensivstation.ch/">INTENSIVSTATION.CH</a></p>

<p><a href="http://www.eb-zuerich.ch/">EB ZUERICH</a> offers CSS courses.</p>
<br>
<br>
</div>



<PRE>


</PRE>

{include file="footer.tpl"}
