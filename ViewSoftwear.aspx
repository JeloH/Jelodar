<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage_mehman.master" AutoEventWireup="true" CodeFile="ViewSoftwear.aspx.cs" Inherits="ViewSoftwear" %>

<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">

    
    
    .link_keywords
    {
         font-family: tahoma; font-weight: bold;  text-decoration: underline; font-style: italic; color: #D2B026;
 
       
        }

           a.link_keywords:hover {font-size:medium; font-weight: bold; font-family: tahoma;  }
            







        .style17
    {
        height: 26px;
        }
    .style23
    {
        height: 13px;
     
    }
        .style27
        {
        }
        .style28
        {
            width: 271px;
        }
        </style>

 










</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">



<script runat="server">

    
    Class1 c1 = new Class1();
    string code_post = "1";
    
    void Submit1_OnClick(object sender, EventArgs e)
    {
   
       //  code_post=Page.Request.QueryString["page"].ToString();
/*
        c1.CmdSqlDataBaesAccess("update send_softwear set date= '" + TextBox1_DateSend.Text + "' ,title= '" + TextBox1_Title.Text + "',img_address= '" + TextBox1_AddressIMG.Text + "',soft_address= '" + TextBox1_AddressFile_link.Text + "', body= '" + TextBox1_body.Text + "',Abstruct= '" + TextBox1_Abestract.Text + "', type= '" + TextBox1_type.Text + "' , lenght= '" + TextBox1_lengh.Text + "', source_company= '" + TextBox1_SourceOrCompany.Text + "',seo= '" + TextBox1_Seo.Text + "',subject_post= '" + TextBox1_SubjectPost.Text + "' where code_post='" + code_post + "' ");

*/


             Update_Post();

      
    }
    
 
    
</script>



<script type = "text/javascript" >

    function GetValues() {
        var dropdown = document.getElementById("TextBox1").value;
        if (dropdown == "") {
            alert("xxx");
           
        }
        else {
            alert(dropdown);
        }
    }


 

</script>

    <p>
        <table __designer:mapid="885">
            <tr __designer:mapid="886">
                <td __designer:mapid="887">
                    <table bgcolor="#FFFF99" dir="rtl" 
                            style="border: 1px solid #D2B026; height: 386px; width: 372px" 
                            __designer:mapid="22e">
                        <tr bgcolor="#E4CD6D" __designer:mapid="22f">
                            <td align="right" bgcolor="#E0C556" class="style17" colspan="4" 
                                    __designer:mapid="230">

<asp:HyperLink 
                                    ID="HyperLink31" runat="server" Font-Bold="True" Font-Underline="False" 
                                    NavigateUrl="#">HyperLink</asp:HyperLink>

</td>
                        </tr>
                        <tr __designer:mapid="232">
                            <td align="right" bgcolor="#FFFF75" colspan="4" __designer:mapid="233">
                                <asp:Image ID="Image1" runat="server" BorderStyle="Solid" Height="223px" 
                                        ImageUrl='<%# Eval("img_address") %>' Width="365px" BorderColor="#DDBF46" 
                                        BorderWidth="1px" />
                            </td>
                        </tr>
                        <tr __designer:mapid="235">
                            <td align="right" bgcolor="#E4CD6D" colspan="4" __designer:mapid="236">
                                &nbsp;<asp:Label ID="bodyLabel" runat="server" Font-Bold="False" 
                                        ForeColor="Black" Height="92px" Text='<%# Eval("Abstruct")+"[...]" %>' 
                                        Width="353px" />
                                &nbsp;</td>
                        </tr>
                        <tr dir="rtl" __designer:mapid="238">
                            <td align="right" bgcolor="#FFFF75" style="color: #333333" 
                                    __designer:mapid="239">
                                &nbsp; نوع:
                                <asp:Label ID="typeLabel" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("type") %>' />
                                &nbsp; &nbsp;</td>
                            <td align="right" bgcolor="#FFFF75" colspan="2" style="color: #333333" 
                                    __designer:mapid="23b">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;</td>
                            <td align="center" bgcolor="#E4CD6D" dir="rtl" __designer:mapid="23c">


<asp:HyperLink ID="HyperLink13" runat="server" 
                                        NavigateUrl='<%# Eval("code_post","ViewSoftwear.aspx?page={0}") %>' 
                                    Font-Bold="True" Font-Strikeout="False" 
                                        Font-Underline="False" ForeColor="#E4CD6D" BorderStyle="None" 
                                    EnableTheming="True" ImageUrl="~/img/dw_soft.gif">دریافت نرم افزار</asp:HyperLink>


                            </td>
                        </tr>
                        <tr __designer:mapid="23e">

                            <td align="right" bgcolor="#E4CD6D" class="style12" colspan="2" 
                                    style="color: #333333" dir="rtl" __designer:mapid="23f">
                                &nbsp; اندازه:

                                <asp:Label ID="lenght" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("lenght") %>' />


                            </td>
                            <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333" __designer:mapid="241">
                                &nbsp; پسورد فایل :

                                <asp:Label ID="lblPassword" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("password_softwear") %>' />

                               </td>
                        </tr>
                        <tr __designer:mapid="242">
                            <td align="right" bgcolor="#FFFF75" class="style22" colspan="2" 
                                    style="color: #333333" dir="rtl" __designer:mapid="243">
                                &nbsp; تعداد بازدید:
                                <asp:Label ID="View_CountLabel" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("View_Count") %>' />
                            </td>
                            <td align="right" bgcolor="#E4CD6D" class="style22" colspan="2" 
                                    style="color: #333333" __designer:mapid="245">
                                &nbsp; منبع :
                                <asp:Label ID="lblsource" runat="server" ForeColor="#333333" 
                                        Text='<%# Eval("source_company") %>' />
                              </td>
                        </tr>
                        <tr __designer:mapid="246">
                            <td align="right" bgcolor="#E4CD6D" class="style12" colspan="2" 
                                    style="color: #333333" dir="rtl" __designer:mapid="247">
                                &nbsp; تاریخ ارسال:
                                <asp:Label ID="dateLabel" runat="server" EnableTheming="True" 
                                        ForeColor="#333333" Text='<%# Eval("date") %>' 
                                    ViewStateMode="Enabled" />
                            </td>
                            <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333" __designer:mapid="249">
                            </td>
                        </tr>
                        <tr __designer:mapid="890">
                            <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333" dir="rtl" __designer:mapid="891">
                                تعداد دانلود:()</td>
                            <td align="right" bgcolor="#E4CD6D" class="style12" colspan="2" 
                                    style="color: #333333" __designer:mapid="892">
                                &nbsp;</td>
                        </tr>
                        <tr __designer:mapid="893">
                            <td align="right" bgcolor="#E4CD6D" class="style12" colspan="2" 
                                    style="color: #333333" dir="rtl" __designer:mapid="894">
                                تعداد نظرها :()</td>
                            <td align="right" bgcolor="#FFFF75" class="style12" colspan="2" 
                                    style="color: #333333" __designer:mapid="895">
                                دسته :
                                <asp:Label ID="subject_post" runat="server" EnableTheming="True" 
                                        ForeColor="#333333" Text='<%# Eval("date") %>' 
                                    ViewStateMode="Enabled" />
                            </td>
                        </tr>
                   
  


  <tr __designer:mapid="24a">
                            <td align="center" bgcolor="#E0C556" class="style23" colspan="4" 
                                     __designer:mapid="24b">
                             
 
<h3>
<B>

   <asp:Label ID="seo_Label" runat="server" 
                                    Text="seo_Label"></asp:Label>
      </B>
</h3>   

        

   </td>         
 

                           

                    </table>
                </td>
            </tr>


     <tr __designer:mapid="898">
                <td __designer:mapid="899" style="font-size: 1px" class="style37">
              
                 


<div id="div1" runat=server style="font-size: 10px" >
                     

                   <table>
                                            <tr>
                                                <td colspan="2">
                                                   
                                                   
                                               
                       <br />
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:ScriptManager ID="ScriptManager1" runat="server">
                                </asp:ScriptManager>

                                <table bgcolor="#F9F988" dir="rtl" style="width: 368px; height: 561px;">
                                    <tr>
                                        <td bgcolor="#D2B026" class="style12" dir="rtl">
                                            &nbsp;نرم افزار</td>
                                    </tr>
                                    <tr>
                                        <td align="right" dir="rtl">
                                            <table>
                                                <tr>
                                                    <td>
                                                        تاریخ ارسال :</td>
                                                    <td colspan="5">
                                                        &nbsp;&nbsp;<asp:TextBox ID="TextBox1_DateSend" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        عنوان :</td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="TextBox1_Title" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        آپلود تصویر :</td>
                                                    <td colspan="5">
                                                        <asp:Image ID="Image2" runat="server" Height="208px" Width="246px" />
                                                        <br />
                                                        <asp:FileUpload ID="FileUpload1" runat="server" />
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        آدرس تصویر :</td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="TextBox1_AddressIMG" runat="server" Width="248px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        آپلود فایل :</td>
                                                    <td colspan="5">
                                                        <asp:FileUpload ID="FileUpload2" runat="server" />
                                                        &nbsp;
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        آدرس فایل :</td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="TextBox1_AddressFile_link" runat="server" Width="243px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        اندازه :</td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="TextBox1_lengh" runat="server" Width="115px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        متن :</td>
                                                    <td colspan="5">
                                                    

                                                    <fckeditorv2:fckeditor ID="FCKeditor1" runat="server" 
                BasePath="./"  FullPage=true >
			</fckeditorv2:fckeditor>          

                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        چکیده :</td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="TextBox1_Abestract" runat="server" Height="91px" 
                                                            TextMode="MultiLine" Width="269px"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td class="style16">
                                                        بخش ارسالی :</td>
                                                    <td class="style16" colspan="5">
                                                           <asp:DropDownList ID="DropDownList1" runat="server">
                                                            <asp:ListItem>android</asp:ListItem>
                                                            <asp:ListItem>java</asp:ListItem>
                                                            <asp:ListItem>bada</asp:ListItem>
                                                            <asp:ListItem>oumumi</asp:ListItem>
                                                           
                                                        </asp:DropDownList>
                                                        &nbsp;
                                                        <br />
                                                        <asp:TextBox ID="TextBox1_type" runat="server" Enabled="False" ></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td rowspan="2">
                                                        موضوع ارسالی :</td>
                                                    <td colspan="5">
                                                        &nbsp;&nbsp;&nbsp;
                                                        <br />
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td colspan="5">
                                                        &nbsp;<asp:TextBox ID="TextBox1_SubjectPost" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        کلمات کلیدی :</td>
                                                    <td>
                                                        <asp:TextBox ID="TextBox1_Seo" runat="server" Width="127px"></asp:TextBox>
                                                    </td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td class="style17">
                                                        &nbsp;</td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        منبع :</td>
                                                    <td colspan="5">
                                                        <asp:TextBox ID="TextBox1_SourceOrCompany" runat="server"></asp:TextBox>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        &nbsp;</td>
                                                    <td colspan="5">
                                                        &nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" bgcolor="#D2B026" dir="rtl">
                                            &nbsp;</td>
                                    </tr>
                                </table>

                            </ContentTemplate>
                        </asp:UpdatePanel>
                  
                                                   
                                                   
                                                   </td>
                                            </tr>
                                            <tr style="border-style: solid; border-color: #0033CC">
                                                <td align="right" bgcolor="#FFCC66" 
                                                    style="border: 1px solid #0000FF; font-size: 12px">
                                                     <input id="Submit1" type="submit" value="بروز رسانی" runat="server" 
                                                        onserverclick="Submit1_OnClick" onclick="return Submit1_onclick()" 
                                                        __designer:mapid="7e9" /></td>
                                                <td align="right" bgcolor="#FFCC66" 
                                                    style="border: 1px solid #0000FF; font-size: 12px">
                                                    <asp:LinkButton ID="LinkButton1" runat="server" onclick="LinkButton1_Click1">خروج</asp:LinkButton>
                                                </td>
                                            </tr>
                                            <tr>
                                                <td colspan="2" style="font-size: 12px">
                                                    &nbsp;</td>
                                            </tr>
                                        </table>

  </div>
    







                </td>
            </tr>



            <tr __designer:mapid="898">
                <td __designer:mapid="899" style="font-size: 10px">
             

  <br />

                    <br />



</td>
            </tr>
            <tr __designer:mapid="89a">
                <td __designer:mapid="89b">
                    <table 
                        style="border: 1px solid #D2B026; width: 372px;" __designer:mapid="89c">
                        <tr __designer:mapid="89d">
                            <td align="right" bgcolor="#E4CD6D" colspan="3" dir="rtl" 
                                style="color: #0000FF" __designer:mapid="89e">
                                می توانید نظر خود را در مورد این نرم افزار ارسال نمایید</td>
                        </tr>
                        <tr __designer:mapid="89d">
                            <td align="right" bgcolor="#E4CD6D" colspan="3" dir="rtl" 
                                style="color: #0000FF; font-size: 2px;" __designer:mapid="89e">
                                &nbsp;</td>
                        </tr>
                        <tr __designer:mapid="89f">
                            <td align="right" bgcolor="#FFFF75" class="style27" __designer:mapid="8a0">
                                نام:</td>
                            <td align="right" bgcolor="#FFFF75" __designer:mapid="8a1" colspan="2">
                                <asp:TextBox ID="TextBox1" runat="server" BackColor="#FFFFC1" >
                                
                                </asp:TextBox>
                            </td>
                        </tr>
                        <tr __designer:mapid="8a3">
                            <td align="right" bgcolor="#FFFF75" class="style27" __designer:mapid="8a4">
                                ایمیل: </td>
                            <td align="right" bgcolor="#FFFF75" __designer:mapid="8a5" colspan="2">
                                <asp:TextBox ID="TextBox2" runat="server" Width="139px" BackColor="#FFFFC1"></asp:TextBox>
                            &nbsp;
                                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="ایمیل را صحیح وارد نمایید" 
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                            &nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                                    ControlToValidate="TextBox2" ErrorMessage="*" Font-Bold="True" 
                                    Font-Size="Medium" Font-Strikeout="False" Font-Underline="False"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr __designer:mapid="8a7">
                            <td align="right" bgcolor="#FFFF75" class="style27" __designer:mapid="8a8">
                                نظر شما :</td>
                            <td align="right" dir="rtl" bgcolor="#FFFF75" __designer:mapid="8a9" 
                                colspan="2">
                                <asp:TextBox ID="TextBox3" runat="server" Height="115px" TextMode="MultiLine" 
                                    Width="257px" BackColor="#FFFFC1"></asp:TextBox>
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                                    ControlToValidate="TextBox3" ErrorMessage="*" Font-Bold="True" 
                                    Font-Size="Medium" Font-Strikeout="False" Font-Underline="False"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr __designer:mapid="8ab">
                            <td align="right" bgcolor="#FFFF75" class="style27" __designer:mapid="8ac">
                                &nbsp;</td>
                            <td align="right" dir="rtl" bgcolor="#FFFF75" __designer:mapid="8ad" 
                                colspan="2">
                             
                                &nbsp;
                                <table style="height: 49px; width: 127px" __designer:mapid="8ae">
                                    <tr __designer:mapid="8af">
                                        <td align="center" bgcolor="#E4CD6D" __designer:mapid="8b0"  >
                             
                                <asp:Label ID="Label4" runat="server" BackColor="#E4CD6D" Font-Size="22pt" 
                                    ForeColor="#AB8F1F" Height="35px" Width="105px" Enabled="False" 
                                                EnableTheming="True" Font-Bold="False" Font-Italic="True" Font-Overline="True" 
                                                Font-Strikeout="True" Font-Underline="True"></asp:Label>
                                           </td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                        <tr __designer:mapid="8b2">
                            <td align="right" bgcolor="#FFFF75" class="style27" __designer:mapid="8b3">
                                عبارت تصویر :</td>
                            <td align="right" dir="rtl" bgcolor="#FFFF75" __designer:mapid="8b4" 
                                colspan="2">
                                <asp:TextBox ID="TextBox4" runat="server" BackColor="#FFFFC1"></asp:TextBox>
                            &nbsp;
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                                    ControlToValidate="TextBox4" ErrorMessage="عبارت تصویر وارد نمایید"></asp:RequiredFieldValidator>
                            </td>
                        </tr>
                        <tr __designer:mapid="8b6">
                            <td bgcolor="#FFFF75" class="style27" __designer:mapid="8b7">
        
        
        <asp:Label ID="Label6" runat="server"></asp:Label>
                            </td>
                            <td align="right" dir="rtl" bgcolor="#FFFF75" __designer:mapid="8b8">
                                <asp:Button ID="Button2" runat="server" Height="19px" Text="ثبت" 
                                    Width="47px" onclick="Button2_Click" />
                            </td>
                            <td align="right" dir="rtl" bgcolor="#FFFF75" __designer:mapid="8bf">
                                <asp:Label ID="Label5" runat="server" Font-Bold="False" ForeColor="Red" 
                                    Text="نوشته تصویر را صحیح وارد نمایید" Visible="False"></asp:Label>
                            </td>
                        </tr>
                        <tr __designer:mapid="8b6" bgcolor="#E4CD6D">
                            <td bgcolor="#E4CD6D" class="style27" __designer:mapid="8b7" colspan="3">
        
        
                                &nbsp;</td>
                        </tr>
                        </table>




                    <br />
                    <table    >
                        <tr>
                            <td>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="code"   EnableModelValidation="True" AllowPaging="True" 
                                     GridLines="None" Width="372px">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <table bgcolor="#F2F7A6" dir="rtl" 
                            style="border-width: 1px; border-style: solid; border-color: #D2B026" 
                            width="100%">
                            <tr bgcolor="#EFF48E">
                                <td align="right" class="style28" dir="rtl" style="font-weight: bold">
                                    &nbsp;
                                    <asp:Label ID="Label8" runat="server" Font-Bold="True" 
                                        Text='<%# Eval("name") %>'></asp:Label>
                                    &nbsp;می گوید:</td>
                                <td align="right" dir="rtl" style="font-weight: bold">
                                    <asp:Label ID="Label7" runat="server" Font-Size="8pt" ForeColor="#333333" 
                                        Text='<%# Eval("Date") %>'></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    &nbsp;
                                    <asp:Label ID="Label9" runat="server" Height="26px" Text='<%# Eval("body") %>' 
                                        Width="222px"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    &nbsp;&nbsp;&nbsp;
                                    <asp:Label ID="Label10" runat="server" Font-Size="8pt" ForeColor="#3399FF" 
                                        Text='<%# Eval("pasokh") %>' BorderColor="#F4F8B1"></asp:Label>
                                </td>
                            </tr>
                            <tr>
                                <td align="right" colspan="2">
                                    &nbsp;</td>
                            </tr>
                        </table>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
                             
 
                                 </td>
                        </tr>
                    </table>




                </td>
            </tr>
        </table>
        
        
    </p>
    </asp:Content>

