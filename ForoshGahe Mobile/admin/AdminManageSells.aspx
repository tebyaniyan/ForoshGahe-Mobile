<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="AdminManageSells.aspx.cs" Inherits="AdminManageSells" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td>
            </td>
            <td>
                <asp:Label ID="Label1" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td>
                <table style="width: 552px">
                    <tr>
                        <td align="right" style="width: 100px">
                            </td>
                        <td align="right" style="width: 100px">
                            </td>
                        <td align="left" style="width: 100px">
                            </td>
                        <td align="right" style="width: 100px">
                            </td>
                        <td align="left" style="width: 100px">
                            </td>
                    </tr>
                </table>
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                <asp:GridView ID="dg" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataKeyNames="fCode" DataSourceID="SqlDataSource2" ForeColor="#333333"
                    GridLines="None" Width="693px" OnSelectedIndexChanged="dg_SelectedIndexChanged">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField SelectImageUrl="~/Images/closed.gif" SelectText="حذف" ShowSelectButton="True" />
                        <asp:BoundField DataField="تاریخ" HeaderText="تاریخ" SortExpression="تاریخ" />
                        <asp:BoundField DataField="شماره فیش" HeaderText="شماره فیش" SortExpression="شماره فیش" />
                        <asp:BoundField DataField="نام بانک" HeaderText="نام بانک" SortExpression="نام بانک" />
                        <asp:BoundField DataField="خریدار" HeaderText="خریدار" SortExpression="خریدار" />
                        <asp:BoundField DataField="گروه" HeaderText="گروه" SortExpression="گروه" />
                        <asp:BoundField DataField="نام جنس" HeaderText="نام جنس" SortExpression="نام جنس" />
                        <asp:BoundField DataField="قیمت" HeaderText="قیمت" SortExpression="قیمت" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    SelectCommand="SELECT * FROM [forosh]"></asp:SqlDataSource>
                &nbsp; &nbsp; &nbsp;&nbsp;
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td>
            </td>
            <td align="center">
                &nbsp;</td>
            <td>
            </td>
        </tr>
    </table>
</asp:Content>

