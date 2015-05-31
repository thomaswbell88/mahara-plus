<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<!--[if IE 8 ]>    <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} lang="{$LANGUAGE}" class="ie ie8"> <![endif]-->
<!--[if IE 9 ]>    <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} lang="{$LANGUAGE}" class="ie ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!-->  <html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if} lang="{$LANGUAGE}"><!--<![endif]-->
<html{if $LANGDIRECTION == 'rtl'} dir="rtl"{/if}>
{include file="header/head.tpl"}
<body id="micro">
{if $USERMASQUERADING || !$PRODUCTIONMODE || $SITECLOSED || $SITETOP}<div class="sitemessages">{/if}
    {if $USERMASQUERADING}<div class="sitemessage"><img src="{theme_url filename='images/failure.png'}" alt="">{$masqueradedetails} {$becomeyouagain|safe}</div>{/if}
    {if !$PRODUCTIONMODE}<div class="sitemessage center">{str tag=notproductionsite section=error}</div>{/if}
    {if $SITECLOSED}<div class="sitemessage center">{if $SITECLOSED == 'logindisabled'}{str tag=siteclosedlogindisabled section=mahara arg1="`$WWWROOT`admin/upgrade.php"}{else}{str tag=siteclosed}{/if}</div>{/if}
    {if $SITETOP}<div id="switchwrap">{$SITETOP|safe}</div>{/if}
{if $USERMASQUERADING || !$PRODUCTIONMODE || $SITECLOSED || $SITETOP}</div>{/if}
		<div id="container">
			<div id="loading-box"></div>
			<div id="top-wrapper">
			  <div class="viewheadertop">
				<div class="logo">
				    <a class="small-logo" href="{$WWWROOT}">
				        <img src="{$WWWROOT}theme/mahara-plus/static/images/site-logo-small.png" alt="{$sitename}">
				    </a>
				</div>
				{if $collection}
				<div id="collection">
					<header class="collection-header">
            <h1 class="collection-title" title="{$microheadertitle|safe}">
                {$microheadertitle|safe}
            </h1>
            <span class="collection-author">
                {$author|safe}
            </span>
          </header>

					{include file=collectionnav.tpl}
				</div>	
			{/if}
			{if !$collection}
        <header class="page-header">
          <h1 class="title"title="{$microheadertitle|safe}">
            {$microheadertitle|safe}
          </h1>
          <span class="page-author">
            {$author|safe}
          </span>
        </header>
      {/if}
            <div class="links">
                {if $microheaderlinks}
                    {foreach from=$microheaderlinks item=item}
                        <a class="btn" href="{$item.url}">{$item.name}</a>
                    {/foreach}
                {/if}
              <a class="btn nojs-hidden-inline" href="javascript:history.back()">{str tag=back}</a>
            </div>
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
