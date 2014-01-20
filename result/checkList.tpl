<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>shasum check result list</title>
    <style type="text/css">
<!--/*
.STYLE1 {
	font-size: 24px;
	font-weight: bold;
}
.STYLE2 {
	color: #000000;
	font-size: 24px;
	font-weight: bold;
}*/
-->
    </style>
</head>

<body>
<p class="STYLE2">shasum check result list：</p>
<TABLE style="BORDER-COLLAPSE: collapse" borderColor=#000000 height=40 cellPadding=1 width=900 align=left border=1>
  <tr>
    <td width="277" bgcolor="#009900">pkg name</td>
    <td bgcolor="#009900">check result</td>
  </tr>
{foreach $repos as $name => $repo}
  <tr>    
    <td>{$name}</td>

    {if ($repo[$isDiff]==0)}
  	     <td><a href="{$repo[$url]}">√√√√√√</a></td>
    {elseif ($repo[$isDiff]==1)}
        <td><a href="{$repo[$url]}"> XXXXXX</a></td>
    {else}
        <td>NULL</td>
    {/if}

  </tr>
{/foreach}
</table>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="STYLE1">&nbsp;</p>
</body>
</html>
