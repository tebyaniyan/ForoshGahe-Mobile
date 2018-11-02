<%@ Page Language="C#" MasterPageFile="~/MasterPageAdmin.master" AutoEventWireup="true" CodeFile="banner.aspx.cs" Inherits="Default2" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <table style="width: 100%; height: 100%">
        <tr>
            <td align="center" colspan="2">
                &nbsp;<asp:Label ID="Label6" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtName"
                    Display="None" ErrorMessage="لطفا عنوان محصول را وارد نمایید"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtName" runat="server" CssClass="txt" Width="180px"></asp:TextBox></td>
            <td align="left">
                <asp:Label ID="Label1" runat="server" Text=": عنوان"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtDesc"
                    Display="None" ErrorMessage="توضیحات را وارد نمایید"></asp:RequiredFieldValidator>
                <asp:TextBox ID="txtDesc" runat="server" CssClass="txt" TextMode="MultiLine" Width="300px" Height="92px"></asp:TextBox></td>
            <td align="left" valign="top">
                <asp:Label ID="Label3" runat="server" Text=": توضیحات"></asp:Label></td>
        </tr>
        <tr>
            <td align="right" style="width: 607px">
            </td>
            <td align="left" valign="top">
            </td>
        </tr>
        <tr>
            <td align="center" style="width: 607px">
                <asp:Button ID="btnInsert"
                            runat="server" CssClass="ddl" OnClick="btnInsert_Click" Text="ذخیره" Width="123px" /></td>
            <td align="left" valign="top">
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2">
                <asp:GridView ID="dg" runat="server" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False"
                    CellPadding="4" DataSourceID="SqlDataSource1" ForeColor="#333333"
                    GridLines="None" Width="611px">
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <Columns>
                        <asp:CommandField CancelText="انصراف" DeleteText="حذف کردن" EditText="ویرایش" InsertText="اضافه کردن"
                            NewText="جدید" SelectText="انتخاب" ShowDeleteButton="True" ShowEditButton="True"
                            ShowSelectButton="True" UpdateText="ثبت تغییرات" />
                        <asp:BoundField DataField="title" HeaderText="عنوان" SortExpression="title" />
                        <asp:BoundField DataField="body" HeaderText="متن" SortExpression="body" />
                    </Columns>
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <EditRowStyle BackColor="#999999" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DBOnlineShopConnectionString %>"
                    SelectCommand="SELECT [title], [body], [id] FROM [banner]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [banner] WHERE [id] = @original_id AND [title] = @original_title AND [body] = @original_body" InsertCommand="INSERT INTO [banner] ([title], [body]) VALUES (@title, @body)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [banner] SET [title] = @title, [body] = @body WHERE [id] = @original_id AND [title] = @original_title AND [body] = @original_body">
                    <DeleteParameters>
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_title" Type="String" />
                        <asp:Parameter Name="original_body" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="body" Type="String" />
                        <asp:Parameter Name="original_id" Type="Int32" />
                        <asp:Parameter Name="original_title" Type="String" />
                        <asp:Parameter Name="original_body" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="title" Type="String" />
                        <asp:Parameter Name="body" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td align="center" colspan="2" style="height: 15px">
            </td>
        </tr>
    </table>
</asp:Content>

