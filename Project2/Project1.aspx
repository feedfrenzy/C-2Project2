<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project1.aspx.cs" Inherits="Project2.Project1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Home Builder</title>
    <style type="text/css">
        .auto-style1 {
            width: 10px;
        }
    </style>
    <center><h1>Jie's Home Builder</h1></center>

    <style>
         .center {
                    margin: auto;
                    width: 60%;
                    border: 3px solid #73AD21;
                    padding: 10px;
                 }
    </style>




</head>
    <body>
    <form id="form1" runat="server">

        <asp:Panel runat="server">
        <table class ="center">
            <tr>
                <td>
                    First Name:
                </td>
                <td>
                    <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
                </td>
                <td>
                    Last Name:
                </td>
                <td>
                    <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
                </td>
            </tr>


            <tr>
                <td>
                    Phone Number:
                </td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server"></asp:TextBox>
                </td>
                <td>
                    Main Address:
                </td>
                <td>
                    <asp:TextBox ID="txtAddress" runat="server"></asp:TextBox>
                </td>
            </tr>

            <tr>
                <td>
                    Email:
                </td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </td>
            </tr>


        </table>

        <center><h3>Please select the room you want to upgrade:</h3></center>

        <asp:GridView ID="gvRooms" class ="center" runat="server" style="z-index: 1; left: auto; top: auto; position: relative; height: 133px; width: 187px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Select Product">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="RoomID" HeaderText="ID" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="PricePerSQFT" HeaderText="Price Per Foot" />
                <asp:TemplateField HeaderText="Length">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </ItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="45px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Width">
                    <ItemTemplate>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </ItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="45px" />
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
        
            <br />

            <center><h3>Select the upgrade for each room:</h3></center>

        <asp:GridView ID="gvKitchen" class ="center" runat="server" style="z-index: 1; left:0px; top: 0px; position: relative; height: 133px; width: 187px; right: -3px;" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Kitchen Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="KUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Kitchen Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Kitchen Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvBathroom" class ="center" runat="server" style="z-index: 1; left: auto; top: auto; position: relative; height: 133px; width: 187px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Bathroom Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox4" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="BrUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Bathroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvLivingroom" class ="center" runat="server" style="height: 133px; width: 187px; " AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Living Room Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox2" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="LUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Livingroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade  Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvMasterBedroom" class ="center" runat="server" style="z-index: 1; left: auto; top: auto; position: relative; height: 133px; width: 187px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Main Bedroom Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox5" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Master Bedroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvBedroom" class ="center" runat="server" style="z-index: 1; left: 0px; top: auto; position: relative; height: 133px; width: 187px; right: 185px;" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Side Bedroom Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox3" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="BUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Bedroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" />
            </Columns>
        </asp:GridView>
        </asp:Panel>
    </form>

        

    </body>
</html>
