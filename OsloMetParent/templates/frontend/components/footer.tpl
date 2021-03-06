{**
 * templates/frontend/components/footer.tpl ==> plugins/themes/OsloMetParent/templates/frontend/components/footer.tpl
 *
 * Copyright (c) 2014-2019 Simon Fraser University
 * Copyright (c) 2003-2019 John Willinsky
 * Distributed under the GNU GPL v2. For full terms see the file docs/COPYING.
 *
 * @brief Common site frontend footer.
 *
 * @uses $isFullWidth bool Should this page be displayed without sidebars? This
 *       represents a page-level override, and doesn't indicate whether or not
 *       sidebars have been configured for thesite.
 *}
{strip}
        {if $currentJournal && $currentJournal->getSetting('onlineIssn')}
                {assign var=onlineIssn value=$currentJournal->getSetting('onlineIssn')}
                {assign var=footerIssnPrefix value='ISSN: '}
                {assign var=footerISSN value="`$footerIssnPrefix``$onlineIssn`"}
        {elseif $currentJournal && $currentJournal->getSetting('printIssn')}
                {assign var=printIssn value=$currentJournal->getSetting('printIssn')}
                {assign var=footerIssnPrefix value='ISSN (print): '}
                {assign var=footerISSN value="`$footerIssnPrefix``$printIssn`"}
        {/if}
{/strip}
	</div><!-- pkp_structure_main -->

	{* Sidebars *}
	{if empty($isFullWidth)}
		{capture assign="sidebarCode"}{call_hook name="Templates::Common::Sidebar"}{/capture}
		{if $sidebarCode}
			<div class="pkp_structure_sidebar left" role="complementary" aria-label="{translate|escape key="common.navigation.sidebar"}">
				{$sidebarCode}
			</div><!-- pkp_sidebar.left -->
		{/if}
	{/if}
</div><!-- pkp_structure_content -->

<div id="pkp_content_footer" class="pkp_structure_footer_wrapper" role="contentinfo">

	<footer class="pkp_structure_footer">
	{if $footerISSN}<p class="issn foobar">{$footerISSN}</p>{/if}
		<div class="columns">
		     {if $pageFooter}{$pageFooter}{/if}			
		     		<div class="column">
				<h4><span lang="en" class="en-US-only">Hosted by</span><span lang="nb" class="nb-NO-only">Driftet av</span></h4>
				<div class="inst-branding oslomet">
					<p><a class="logotext" href="https://oslomet.no/ub" target="_blank" rel="noopener"> <img class="logo" src="/plugins/themes/OsloMetParent/svg/OsloMet-logo-black.svg" alt=""><span class="en-US-only logotext">OsloMet University Library</span><span class="nb-NO-only">Universitetsbiblioteket OsloMet</span></a></p>
					<div class="info">
						<p lang="nb" class="nb-NO-only"><a href="https://journals.hioa.no/help/cookies-no_NO.html">Om informasjonskapsler på journals.hioa.no</a></p>
						<p lang="en" class="en-US-only"><a href="https://journals.hioa.no/help/cookies-en_US.html">About cookies at journals.hioa.no</a></p>
					</div><!-- .info -->
				</div><!-- .column.inst-branding -->
			</div><!-- .column -->
		</div><!-- columns -->
	</footer>
</div><!-- pkp_structure_footer_wrapper -->

</div><!-- pkp_structure_page -->

{load_script context="frontend"}

{call_hook name="Templates::Common::Footer::PageFooter"}
<script type="text/javascript">
$( document ).ready(function() {ldelim}
    $('body').addClass('no-borders');
        // workaround for when OJS strips needed target attribute
        // in the back-end: add the class="_top" on anchors needing the target attribute with the value "_top"
        // This line adds target="_top" atteribute to anchors with class="_top".
        // needed for some links to break out of iframe or cloaked forwarding
        $('a._top').attr('target','_top'); 
{rdelim});
</script>
</body>
</html>
