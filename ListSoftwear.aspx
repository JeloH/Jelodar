<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_mehman.master" AutoEventWireup="true" CodeFile="ListSoftwear.aspx.cs" Inherits="ListSoftwear" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">



        .style17
    {
        height: 26px;
        }
    .style23
    {
        height: 19px;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
       

            <asp:LinkButton ID="btnFirst" runat="server" OnClick="btnFirst_Click">First</asp:LinkButton>
            <asp:LinkButton ID="btnPrev" runat="server" OnClick="btnPrev_Click" 
                Text="Prev" />
            <asp:Label ID="lblCurrentPage" runat="server"></asp:Label>
            <asp:LinkButton ID="btnNext" runat="server" OnClick="btnNext_Click" 
                Text="Next" />
            <asp:LinkButton ID="btnLast" runat="server" OnClick="btnLast_Click">Last</asp:LinkButton>
&nbsp;&nbsp;
            <asp:LinkButton ID="LinkButton1" runat="server">LinkButton</asp:LinkButton>
       

            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
            AutoGenerateColumns="False" DataKeyNames="code_post" 
            EnableModelValidation="True" 
            GridLines="None">



   <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table bgcolor="#FFFF99" dir="rtl" 
                            style="border: 1px solid #D2B026; height: 386px; width: 372px">
                            <tr bgcolor="#E4CD6D">
                                <td align="right" bgcolor="#E0C556" class="style17" colspan="4">
                                    &nbsp;


<asp:HyperLink ID="HyperLink23" runat="server" Font-Bold="True" 
                                        Font-Underline="False" ForeColor="#0066FF" Height="16px" 
                                        NavigateUrl='<%# Eval("code_post","ViewSoftwear.aspx?page={0}") %>' 
                                        Text='<%# Eval("title") %>' Width="355px"></asp:HyperLink>
 

                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="#FFFF75" colspan="4">
                                    <asp:Image ID="Image1" runat="server" BorderColor="#DDBF46" BorderStyle="Solid" 
                                        BorderWidth="1px" Height="223px" ImageUrl='<%# Eval("img_address") %>' 
                                        Width="365px" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="#E4CD6D" colspan="4">
                                    &nbsp;<asp:Label ID="AbstructLabel" runat="server" Font-Bold="False" 
                                        ForeColor="Black" Height="70px" Text='<%# Eval("Abstruct")+"[...]" %>' 
                                        Width="323px" />
                                    &nbsp;</td>
                            </tr>
                            <tr dir="rtl">
                                <td align="right" bgcolor="#FFFF75" style="color: #333333">
                                    &nbsp; نوع:
                                    <asp:Label ID="typeLabel" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("type") %>' />
                                    &nbsp; &nbsp;</td>
                                <td align="right" bgcolor="#FFFF75" colspan="2" style="color: #333333">
                                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                                <td align="left" bgcolor="#E4CD6D" dir="rtl">
                                    <asp:HyperLink ID="HyperLink13" runat="server" Font-Bold="True" 
                                        Font-Strikeout="False" Font-Underline="False" ForeColor="Red" 
                                        NavigateUrl='<%# Eval("code_post","ViewSoftwear.aspx?page={0}") %>'>ادامه مطلب</asp:HyperLink>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="#E4CD6D" class="style12" colspan="2" dir="rtl" 
                                    style="color: #333333">
                                    &nbsp; اندازه:
                                    <asp:Label ID="lenght" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("lenght") %>' />
                                </td>
                                <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="#FFFF75" class="style22" colspan="2" dir="rtl" 
                                    style="color: #333333">
                                    &nbsp; تعداد بازدید:
                                    <asp:Label ID="View_CountLabel" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("View_Count") %>' />
                                </td>
                                <td align="right" bgcolor="#E4CD6D" class="style22" colspan="2" 
                                    style="color: #333333">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="right" bgcolor="#E4CD6D" class="style12" colspan="2" dir="rtl" 
                                    style="color: #333333">
                                    &nbsp; تاریخ ارسال:
                                    <asp:Label ID="dateLabel" runat="server" EnableTheming="True" 
                                        ForeColor="#333333" Text='<%# Eval("date") %>' ViewStateMode="Enabled" />
                                </td>
                                <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333">
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td align="center" bgcolor="#E0C556" class="style23" colspan="4" 
                                    style="color: #2079FF; font-size: 9px;">
                                    برای مشاهده کامل و دریافت نرم افزار روی ادامه مطلب کلید کنید</td>
                            </tr>
                        
                            </table>

<br />
<br />


                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
 
 

    </p>
<p>
        <br />
    </p>
</asp:Content>

