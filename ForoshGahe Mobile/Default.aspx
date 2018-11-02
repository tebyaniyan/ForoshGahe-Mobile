<%@ Page Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td>
            </td>
            <td align="center">
                <asp:LinkButton ID="LinkButton3" runat="server" Visible="False" OnClick="LinkButton3_Click">مشاهده سبد خرید</asp:LinkButton></td>
            <td style="width: 20%">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                <asp:Label ID="lbOk" runat="server" Font-Bold="True" ForeColor="#004000"></asp:Label>
                <asp:LinkButton ID="Label7" runat="server" ForeColor="Maroon" OnClick="Label7_Click"></asp:LinkButton>&nbsp;</td>
            <td style="width: 20%">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
            </td>
            <td style="width: 20%">
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td valign="top">
                <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="fCodeProducts" DataSourceID="SqlDataSource2" ForeColor="#333333"
                    GridLines="None" Width="531px" OnSelectedIndexChanged="GridView2_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="لیست کالاهای هر گروه" SortExpression="fName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <table border="1" style="width: 100%; height: 100%">
                                    <tr>
                                        <td style="background-image: url(Images/back.gif); height: 12px">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <table style="width: 100%; height: 100%">
                                                <tr>
                                                    <td rowspan="3" style="width: 92px">
                                                        <asp:Image ID="Image1" runat="server" Height="77px" ImageUrl='<%# Eval("fImageName") %>'
                                                            Width="92px" /></td>
                                                    <td align="right" style="width: 85%">
                                                        <asp:Label ID="Label1" runat="server" Font-Bold="True" Text='<%# Bind("fName") %>'></asp:Label></td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="Label2" runat="server" ForeColor="Maroon" Text=": نام کالا"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 85%">
                                                        <asp:Label ID="Label5" runat="server" Text='<%# Eval("fDesc") %>'></asp:Label></td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="Label3" runat="server" ForeColor="Maroon" Text=": توضیحات"></asp:Label></td>
                                                </tr>
                                                <tr>
                                                    <td align="right" style="width: 85%">
                                                        <table style="width: 100%; height: 100%">
                                                            <tr>
                                                                <td align="left">
                                                                    <asp:LinkButton ID="LinkButton2" runat="server" CommandName="Select">اضافه به سبد خرید</asp:LinkButton></td>
                                                                <td align="right">
                                                                    <asp:Label ID="Label6" runat="server" Text='<%# Eval("fPrice") %>'></asp:Label></td>
                                                            </tr>
                                                        </table>
                                                    </td>
                                                    <td style="width: 15%">
                                                        <asp:Label ID="Label4" runat="server" ForeColor="Maroon" Text=": قیمت"></asp:Label>&nbsp;</td>
                                                </tr>
                                            </table>
                                        </td>
                                    </tr>
                                </table>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle Font-Bold="True" ForeColor="#333333" BackColor="#E2DED6" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    ProviderName="<%$ ConnectionStrings:DBOnlineShopConnectionString.ProviderName %>"
                    SelectCommand="SELECT * FROM [tProducts] WHERE ([fCodeGroup] = @fCodeGroup) ORDER BY [fName]">
                    <SelectParameters>
                        <asp:ControlParameter ControlID="GridView1" DefaultValue="11" Name="fCodeGroup" PropertyName="SelectedValue"
                            Type="Int32" />
                    </SelectParameters>
                </asp:SqlDataSource>
            </td>
            <td style="width: 20%" valign="top" align="center">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4"
                    DataKeyNames="fCodeGroups" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    GridLines="None" Width="152px" Height="281px" OnSelectedIndexChanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:TemplateField HeaderText="نام گروه" SortExpression="fName">
                            <EditItemTemplate>
                                <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("fName") %>'></asp:TextBox>
                            </EditItemTemplate>
                            <ItemTemplate>
                                <asp:LinkButton ID="LinkButton1" runat="server" CommandName="Select" Text='<%# Eval("fName") %>'></asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    SelectCommand="SELECT * FROM [tGroups] ORDER BY [fName]" ProviderName="<%$ ConnectionStrings:DBOnlineShopConnectionString.ProviderName %>"></asp:SqlDataSource>
                <table style="width: 181px; height: 304px">
                    <tr>
                        <td align="center" colspan="" scope="col" style="width: 180px; height: 191px">
                           <asp:DataList ID="dlstBaners" runat="server" CellPadding="4" DataSourceID="SqlDataSource3"
                                ForeColor="#333333" Height="1px" Width="146px">
                                <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                <SelectedItemStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                <ItemTemplate>
                                 <marquee id="mqbaner" direction="up" onmousemove=this.stop() onmouseout=this.start() scrollAmount="2" style="text-align: center"><asp:Label id="titleLabel" runat="server" Text='<%# Eval("title") %>' __designer:wfdid="w1"></asp:Label><BR />-----------------&nbsp;<BR />&nbsp;<asp:Label id="bodyLabel" runat="server" Text='<%# Eval("body") %>' __designer:wfdid="w2"></asp:Label><BR /><BR /></marquee>
                                </ItemTemplate>
                                <AlternatingItemStyle BackColor="White" ForeColor="#284775" />
                                <ItemStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                <HeaderTemplate>
                                    تبلیغات
                                </HeaderTemplate>
                                <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            </asp:DataList><asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                                SelectCommand="SELECT [title], [body] FROM [banner]"></asp:SqlDataSource>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 180px">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 180px">
                        </td>
                        <td>
                        </td>
                        <td>
                        </td>
                    </tr>
                </table>
                &nbsp; &nbsp;
                &nbsp; &nbsp;</td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
            </td>
            <td style="width: 20%; height: 20px">
            </td>
        </tr>
    </table>
</asp:Content>

