<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="ListSoftwear.aspx.cs" Inherits="Admin_ListSoftwear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style15
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" runat="server" 
    contentplaceholderid="ContentPlaceHolder1">
    <table class="style15">
    <tr>
        <td align="center" bgcolor="#D2B026">
            لیست نرم افزار های موجود</td>
    </tr>
    <tr>
        <td align="center">
            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code_post"  PageSize="50"
                DataSourceID="SqlDataSource1" EnableModelValidation="True" 
                onselectedindexchanged="GridView1_SelectedIndexChanged">
                <Columns>
                    <asp:BoundField DataField="code_post" HeaderText="کد نرم افزار" 
                        InsertVisible="False" ReadOnly="True" SortExpression="code_post" />
                    <asp:BoundField DataField="date" HeaderText="تاریخ ارسال" 
                        SortExpression="date" />
                    <asp:BoundField DataField="title" HeaderText="عنوان" SortExpression="title" />
           
                    <asp:BoundField DataField="type" HeaderText="نوع نرم افزار" 
                        SortExpression="type" />
                    <asp:BoundField DataField="View_Count" HeaderText="تعداد بازدید" 
                        SortExpression="View_Count" />

                     
 
      <asp:HyperLinkField 
      DataTextField="title" 
      HeaderText="آدرس دریافت" 
      
      DataNavigateUrlFields="soft_address" 
      DataNavigateUrlFormatString="{0}" />

                    
 





                    <asp:BoundField DataField="source_company" HeaderText="منبع" 
                        SortExpression="source_company" />
                    <asp:BoundField DataField="subject_post" HeaderText="مربوط_به_بخش" 
                        SortExpression="subject_post" />
                    <asp:BoundField DataField="download_count" HeaderText="تعداد دانلودها" 
                        SortExpression="download_count" />

                    
 





                </Columns>
                <EmptyDataTemplate>
                    <asp:Button ID="Button8" runat="server" Text="Button" />
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    <br />
                </EmptyDataTemplate>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                OldValuesParameterFormatString="original_{0}" 
                
                SelectCommand="SELECT [code_post], [date], [title], [soft_address], [type], [source_company], [View_Count], [subject_post], [download_count] FROM [demah].[send_softwear]">
            </asp:SqlDataSource>
        </td>
    </tr>
    <tr>
        <td align="center">
            <asp:Button ID="Button6" runat="server" Text="حذف کلی" />
&nbsp;<asp:Button ID="Button7" runat="server" Text="گزارشگیری" />
        </td>
    </tr>
    <tr>
        <td bgcolor="#D2B026">
            &nbsp;</td>
    </tr>
</table>
</asp:Content>


