<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>{$name} check result list</title>
</head>

<body>
<p class="STYLE2">{$name} shasum check result list：</p>
<TABLE style="BORDER-COLLAPSE: collapse" borderColor=#000000 height=40 cellPadding=1 width=900 align=left border=1>
  <tr>
    <td width="277" bgcolor="#009900">pkg name</td>
    <td bgcolor="#009900">check result</td>
  </tr>
{foreach $repos[$name][$vers] as $v => $result}
  <tr>    
    <td>{$v}</td>

    {if ($result==0)}
        <td>√√√√√√</td>
    {else}
        <td>XXXXXX</td>    
    {/if}

  </tr>
{/foreach}
</table>

<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="STYLE1">&nbsp;</p>
    <p><a href="{$main_page}">Back to List</a></p>
</body>
</html>