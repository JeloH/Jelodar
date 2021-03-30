<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="NazarSanji_Create.aspx.cs" Inherits="Admin_NazarSanji_Create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
    .style16
    {
        width: 100%;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
    <table bgcolor="#F9F988" dir="rtl" 
    style="width: 410px; height: 20px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            ایجاد نظر سنجی</td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" class="style12">
                            <table class="style16">
                                <tr>
                                    <td>
                                        متن سوال :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox1" runat="server" TextMode="MultiLine" Width="314px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        گزینه a :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        گزینه b :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        گزینه c :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        گزینه d :</td>
                                    <td>
                                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                    </td>
                                    <td class="style12">
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        تاریخ ایجاد:</td>
                                    <td class="style12">
                                        <asp:TextBox ID="TextBox6" runat="server" Width="110px"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td class="style12">
                                        وضعیت :</td>
                                    <td class="style12">
                                        <asp:CheckBox ID="CheckBox1" runat="server" 
                                            Text="فعال شود و در سایت نمایش داده شود." />
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                        &nbsp;</td>
                                    <td>
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" 
                                            Text="ایجاد شود" />
                                    </td>
                                </tr>
                            </table>
                        </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl" bgcolor="#D2B026">
                            &nbsp;</td>
                    </tr>
                </table>
                <br />
</p>
</asp:Content>

