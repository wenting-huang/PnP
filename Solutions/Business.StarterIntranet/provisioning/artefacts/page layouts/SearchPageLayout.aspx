<%@ Page language="C#"   Inherits="Microsoft.SharePoint.Publishing.PublishingLayoutPage,Microsoft.SharePoint.Publishing,Version=16.0.0.0,Culture=neutral,PublicKeyToken=71e9bce111e9429c" meta:progid="SharePoint.WebPartPage.Document" meta:webpartpageexpansion="full" %>
<%@ Register Tagprefix="SharePointWebControls" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %> 
<%@ Register Tagprefix="WebPartPages" Namespace="Microsoft.SharePoint.WebPartPages" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@ Register TagPrefix="PublishingWebControls" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c" %>
<%@Register Tagprefix="PageFieldTaxonomyFieldControl" Namespace="Microsoft.SharePoint.Taxonomy" Assembly="Microsoft.SharePoint.Taxonomy, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldRadioButtonChoiceField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldUserField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldDateTimeField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldPublishingScheduleFieldControl" Namespace="Microsoft.SharePoint.Publishing.WebControls" Assembly="Microsoft.SharePoint.Publishing, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>
<%@Register Tagprefix="PageFieldBooleanField" Namespace="Microsoft.SharePoint.WebControls" Assembly="Microsoft.SharePoint, Version=16.0.0.0, Culture=neutral, PublicKeyToken=71e9bce111e9429c"%>

<asp:Content ContentPlaceHolderID="PlaceHolderAdditionalPageHead" runat="server">

	<!-- Custom styles are loaded only on display mode -->
    <PublishingWebControls:EditModePanel runat="server" id="DisplayModeControl" SuppressTag="true" PageDisplayMode="display">
            <SharePointWebControls:CssRegistration runat="server" ID="PortalCss" Name="&lt;% $SPUrl:~sitecollection/Style Library/PnP/layouts.css %&gt;" After="corev15.css"/>
	</PublishingWebControls:EditModePanel>

    <!-- Custom styles are loaded only on edit mode -->
	<PublishingWebControls:EditModePanel runat="server" id="EditModeControl" SuppressTag="true">
        <SharePointWebControls:CssRegistration runat="server" ID="PortalLayoutEditCss" Name="&lt;% $SPUrl:~sitecollection/Style Library/PnP/layouts-edit.css %&gt;" After="corev15.css"/>

		<SharePointWebControls:CssRegistration name="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/editmode15.css %>"
			After="<% $SPUrl:~sitecollection/Style Library/~language/Themable/Core Styles/pagelayouts15.css %>" runat="server"/>

    </PublishingWebControls:EditModePanel>

</asp:Content>

<asp:Content ContentPlaceholderID="PlaceHolderPageTitle" runat="server">
	<SharePointWebControls:FieldValue id="PageTitle" FieldName="Title" runat="server"/>
</asp:Content>
<asp:Content ContentPlaceholderID="PlaceHolderMain" runat="server">

	<div class="page-layout">
		<div class="row">
			<div class="col-md-12">

				<PublishingWebControls:EditModePanel runat="server" id="DisplayModePageInfo" SuppressTag="true" PageDisplayMode="display">
					<div id="title" class="field">
						<SharePointWebControls:TextField runat="server" FieldName="Title"/>
					</div>
				</PublishingWebControls:EditModePanel>

				<PublishingWebControls:EditModePanel runat="server" CssClass="edit-mode-panel title-edit">
				
					<div id="title" class="field">
						<SharePointWebControls:TextField runat="server" FieldName="Title"/>            
					</div>

					<div id="contact" class="field">
						<PageFieldUserField:UserField FieldName="IntranetContact" runat="server"/>    
					</div>					
					
	                <div id="sitemap-position" class="field">
	        			<PageFieldTaxonomyFieldControl:TaxonomyFieldControl FieldName="IntranetSiteMapPosition" runat="server" CssClass="jambon"/>
	       			</div>
	                
	                <div id="language" class="field">
	                   <PageFieldRadioButtonChoiceField:RadioButtonChoiceField FieldName="IntranetContentLanguage" runat="server"/>
	                </div>
	
	                <div id="translation" class="field">
	                    <component-translationcontrol params='availableLanguages: ["EN","FR"], languageFieldName:"IntranetContentLanguage", associationKeyFieldName:"IntranetContentAssociationKey"'></component-translationcontrol>
	            	</div>

					<div id="hide-sidebar" class="field">
						<PageFieldBooleanField:BooleanField FieldName="HideSideBar" runat="server"/>
					</div>					
		                    
				</PublishingWebControls:EditModePanel>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4">
				<WebPartPages:WebPartZone id="xd65ad140d6204281af26f07310222a11" runat="server" title="Main 33 1"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
			</div>	
			<div class="col-md-8">
				<div class="row">
					<div class="col-md-12">
						<WebPartPages:WebPartZone id="x7bd250ccc7fa476ab976f3b3d3af90d1" runat="server" title="Main 66 1"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
					<div class="col-md-4">
						<WebPartPages:WebPartZone id="x584d8650ffa54643bd4f8ea5ec80a78c" runat="server" title="Main 33 2"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
					<div class="col-md-4">
						<WebPartPages:WebPartZone id="x24ba5369dc204483bacc032b2a2f1e37" runat="server" title="Main 33 3"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
					<div class="col-md-4">
						<WebPartPages:WebPartZone id="x06c996269d3442b5938a51a12a09c1ac" runat="server" title="Main 33 4"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
					<div class="col-md-12">
						<WebPartPages:WebPartZone id="x7870b7c6f0ef44438dabd572627a5e9e" runat="server" title="Main 66 2"><ZoneTemplate></ZoneTemplate></WebPartPages:WebPartZone>
					</div>
				</div>
			</div>
		</div>
	</div>	

</asp:Content>
