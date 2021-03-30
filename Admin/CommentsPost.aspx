<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/MasterPageModir.master" AutoEventWireup="true" CodeFile="CommentsPost.aspx.cs" Inherits="Admin_CommentsPost" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <p>
                <table bgcolor="#F9F988" dir="rtl" 
        style="width: 142px; height: 24px;">
                    <tr>
                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                            لیست نظرات </td>
                    </tr>
                    <tr>
                        <td align="right" dir="rtl">
                            <asp:GridView ID="GridView1" runat="server" AllowPaging="True" 
                                AllowSorting="True" AutoGenerateColumns="False" DataKeyNames="code" 
                                DataSourceID="SqlDataSource1">
                                <Columns>
                                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                    <asp:BoundField DataField="code" HeaderText="code" InsertVisible="False" 
                                        ReadOnly="True" SortExpression="code" />
                                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                                    <asp:BoundField DataField="body" HeaderText="body" SortExpression="body" />
                                    <asp:CheckBoxField DataField="status" HeaderText="status" 
                                        SortExpression="status" />
                                    <asp:BoundField DataField="date" HeaderText="date" 
                                        SortExpression="date" />
                                    <asp:BoundField DataField="ip" HeaderText="ip" SortExpression="ip" />
                                    <asp:BoundField DataField="code_post" HeaderText="code_post" 
                                        SortExpression="code_post" />
                                    <asp:BoundField DataField="title_post" HeaderText="title_post" 
                                        SortExpression="title_post" />
                                    <asp:BoundField DataField="pasokh" HeaderText="pasokh" 
                                        SortExpression="pasokh" />
                                </Columns>
                            </asp:GridView>
                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                                DeleteCommand="DELETE FROM [comments] WHERE [code] = @original_code AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([body] = @original_body) OR ([body] IS NULL AND @original_body IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([ip] = @original_ip) OR ([ip] IS NULL AND @original_ip IS NULL)) AND (([code_post] = @original_code_post) OR ([code_post] IS NULL AND @original_code_post IS NULL)) AND (([title_post] = @original_title_post) OR ([title_post] IS NULL AND @original_title_post IS NULL)) AND (([pasokh] = @original_pasokh) OR ([pasokh] IS NULL AND @original_pasokh IS NULL))" 
                                InsertCommand="INSERT INTO [comments] ([name], [email], [body], [status], [date], [ip], [code_post], [title_post], [pasokh]) VALUES (@name, @email, @body, @status, @date, @ip, @code_post, @title_post, @pasokh)" 
                                SelectCommand="SELECT * FROM [comments]" 
                                
                                
                                UpdateCommand="UPDATE [comments] SET [name] = @name, [email] = @email, [body] = @body, [status] = @status, [date] = @date, [ip] = @ip, [code_post] = @code_post, [title_post] = @title_post, [pasokh] = @pasokh WHERE [code] = @original_code AND (([name] = @original_name) OR ([name] IS NULL AND @original_name IS NULL)) AND (([email] = @original_email) OR ([email] IS NULL AND @original_email IS NULL)) AND (([body] = @original_body) OR ([body] IS NULL AND @original_body IS NULL)) AND (([status] = @original_status) OR ([status] IS NULL AND @original_status IS NULL)) AND (([date] = @original_date) OR ([date] IS NULL AND @original_date IS NULL)) AND (([ip] = @original_ip) OR ([ip] IS NULL AND @original_ip IS NULL)) AND (([code_post] = @original_code_post) OR ([code_post] IS NULL AND @original_code_post IS NULL)) AND (([title_post] = @original_title_post) OR ([title_post] IS NULL AND @original_title_post IS NULL)) AND (([pasokh] = @original_pasokh) OR ([pasokh] IS NULL AND @original_pasokh IS NULL))" 
                                ConflictDetection="CompareAllValues" 
                                OldValuesParameterFormatString="original_{0}">
                                <DeleteParameters>
                                    <asp:Parameter Name="original_code" Type="Int32" />
                                    <asp:Parameter Name="original_name" Type="String" />
                                    <asp:Parameter Name="original_email" Type="String" />
                                    <asp:Parameter Name="original_body" Type="String" />
                                    <asp:Parameter Name="original_status" Type="Boolean" />
                                    <asp:Parameter Name="original_date" Type="String" />
                                    <asp:Parameter Name="original_ip" Type="String" />
                                    <asp:Parameter Name="original_code_post" Type="Int32" />
                                    <asp:Parameter Name="original_title_post" Type="String" />
                                    <asp:Parameter Name="original_pasokh" Type="String" />
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="body" Type="String" />
                                    <asp:Parameter Name="status" Type="Boolean" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="ip" Type="String" />
                                    <asp:Parameter Name="code_post" Type="Int32" />
                                    <asp:Parameter Name="title_post" Type="String" />
                                    <asp:Parameter Name="pasokh" Type="String" />
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="name" Type="String" />
                                    <asp:Parameter Name="email" Type="String" />
                                    <asp:Parameter Name="body" Type="String" />
                                    <asp:Parameter Name="status" Type="Boolean" />
                                    <asp:Parameter Name="date" Type="String" />
                                    <asp:Parameter Name="ip" Type="String" />
                                    <asp:Parameter Name="code_post" Type="Int32" />
                                    <asp:Parameter Name="title_post" Type="String" />
                                    <asp:Parameter Name="pasokh" Type="String" />
                                    <asp:Parameter Name="original_code" Type="Int32" />
                                    <asp:Parameter Name="original_name" Type="String" />
                                    <asp:Parameter Name="original_email" Type="String" />
                                    <asp:Parameter Name="original_body" Type="String" />
                                    <asp:Parameter Name="original_status" Type="Boolean" />
                                    <asp:Parameter Name="original_date" Type="String" />
                                    <asp:Parameter Name="original_ip" Type="String" />
                                    <asp:Parameter Name="original_code_post" Type="Int32" />
                                    <asp:Parameter Name="original_title_post" Type="String" />
                                    <asp:Parameter Name="original_pasokh" Type="String" />
                                </UpdateParameters>
                            </asp:SqlDataSource>
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

