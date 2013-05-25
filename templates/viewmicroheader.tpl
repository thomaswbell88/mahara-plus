		<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
		<!--[if lt IE 7 ]> <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie6"> <![endif]-->
		<!--[if IE 7 ]>    <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie7"> <![endif]-->
		<!--[if IE 8 ]>    <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie8"> <![endif]-->
		<!--[if IE 9 ]>    <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} class="ie ie9"> <![endif]-->
		<!--[if (gt IE 9)|!(IE)]><!-->  <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if}><!--<![endif]-->
		<html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if}>
		{include file="header/head.tpl"}
		<body id="micro">
		{if $USERMASQUERADING}<div class="sitemessage"><img src="{theme_url filename='images/icon_problem.gif'}" alt="">{$masqueradedetails} {$becomeyouagain|safe}</div>{/if}
		{if $SITECLOSED}<div class="sitemessage center">{if $SITECLOSED == 'logindisabled'}{str tag=siteclosedlogindisabled section=mahara arg1="`$WWWROOT`admin/upgrade.php"}{else}{str tag=siteclosed}{/if}</div>{/if}
		<div id="containerX">
			<div id="loading-box"></div>
			<div id="top-wrapper">
			  <div class="viewheadertop">
				<div class="fr links">
				  {if $microheaderlinks}
					{foreach from=$microheaderlinks item=item}
					  <a class="btn" href="{$item.url}">{$item.name}</a>
					{/foreach}
				  {/if}
				  <a class="btn nojs-hidden-inline" href="javascript:history.back()">{str tag=back}</a>
				</div>
				<div class="fl">
				  <a class="small-logo" href="{$WWWROOT}"><img src="{$WWWROOT}theme/mahara-plus/static/images/site-logo-small.png" alt="{$sitename}"></a>
				</div>
				{if $collection}
				<div id="collection"><h1 class="collection-title" title="{$microheadertitle|safe}">{$microheadertitle|safe}</h1><p>{$author|safe}</p>{include file=collectionnav.tpl}</div>	
			{/if}
			{if !$collection}<h1 class="center title"title="{$microheadertitle|safe}">{$microheadertitle|safe}</h1><p>{$author|safe}</p>{/if}
      </div>
      <div class="viewheader">

		<div class="cb"></div>
      </div>
    </div>
   
	<div class="cb"></div>
  <div id="mainmiddlewrap">
    <div id="mainmiddle">
      <div id="main-wrapper">
          <div class="main-column">
              <div id="main-column-container">
				{dynamic}{insert_messages}{/dynamic}
