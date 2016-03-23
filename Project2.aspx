<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Project2.aspx.cs" Inherits="Project2.Project2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Home Builder</title>
    <center><h1>Jie's Home Builder</h1></center>

    <style>
         .center {
                    margin: auto;
                    width: 60%;
                    border: 3px solid #73AD21;
                    padding: 10px;
            position: relative;
            top: 0px;
            left: 0px;
            height: 167px;
        }
    </style>

</head>
    <body>
    <form id="form1" runat="server">
        <asp:Panel runat="server" ID="panel1">
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

            <br/>
            <asp:Label ID="lblWarning" runat="server" ForeColor="Red"></asp:Label>

        <h3>Please select the room you want to upgrade:</h3>

        <asp:GridView ID="gvRooms" runat="server" style="z-index: 1; left: auto; top: auto; position: relative; height: 133px; width: 187px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Select Product">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="RoomID" HeaderText="ID" />
                <asp:BoundField DataField="Description" HeaderText="Description" />
                <asp:BoundField DataField="PricePerSQFT" HeaderText="Price Per Foot" DataFormatString="{0:c}" />
                <asp:TemplateField HeaderText="Length">
                    <ItemTemplate>
                        <asp:TextBox ID="txtLengthPSQF" runat="server"></asp:TextBox>
                    </ItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="45px" />
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Width">
                    <ItemTemplate>
                        <asp:TextBox ID="txtWidthPSQF" runat="server"></asp:TextBox>
                    </ItemTemplate>
                        <ControlStyle Width="50px" />
                        <HeaderStyle Width="45px" />
                </asp:TemplateField>
                <asp:BoundField DataField="roomType" HeaderText="type" />
            </Columns>
        </asp:GridView>
        
            <br />

            <h3>Select the upgrade for each room:</h3>

        <asp:GridView ID="gvKitchen" runat="server" style="z-index: 1; left:0px; top: 0px; position: relative; height: 133px; width: 187px; right: -3px;" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Kitchen Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="KUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Kitchen Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Kitchen Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="upgradeType" HeaderText="Type" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvBathroom"  runat="server" style="z-index: 1; left: auto; top: auto; position: relative; height: 133px; width: 187px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Bathroom Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server"/>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="BrUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Bathroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="upgradeType" HeaderText="Type" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvLivingroom" runat="server" style="height: 133px; width: 187px; " AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Living Room Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="LUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Livingroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade  Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="upgradeType" HeaderText="Type" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvMasterBedroom" runat="server" style="z-index: 1; left: auto; top: auto; position: relative; height: 133px; width: 187px" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Main Bedroom Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="MUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Master Bedroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="upgradeType" HeaderText="Type" />
            </Columns>
        </asp:GridView>
            <br />

        <asp:GridView ID="gvBedroom" runat="server" style="z-index: 1; left: 0px; top: auto; position: relative; height: 133px; width: 187px; right: 185px;" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="Side Bedroom Upgrade">
                    <ItemTemplate>
                        <asp:CheckBox ID="chkSelect" runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="BUpgradeID" HeaderText="ID" />
                <asp:BoundField DataField="Bedroom Upgrade" HeaderText="Upgrade" />
                <asp:BoundField DataField="Upgrade Description" HeaderText="Description" />
                <asp:BoundField DataField="Upgrade Price" HeaderText="Price" DataFormatString="{0:c}" />
                <asp:BoundField DataField="upgradeType" HeaderText="Type" />
            </Columns>
        </asp:GridView>
        <asp:Button ID="btnBuild" runat="server" Height="37px" Text="Build House" Width="113px" OnClick ="btnBuild_Click" />
        </asp:Panel>


            
            <asp:Panel ID="Panel2" runat="server" Height="264px">
                <br/> 
                <center><asp:Label ID="lblWarning2" runat="server" ForeColor="Red"></asp:Label>
                    <br/>
                <asp:Label ID="lblInfo" runat="server"></asp:Label></center>
                <br/> <br/> 
                <asp:GridView ID="gvOutput" runat="server" class ="center" AutoGenerateColumns="False" ShowFooter="True">
                <Columns>
                    <asp:BoundField DataField="homeDesc" HeaderText="Description" />
                    <asp:BoundField DataField="homePrice" DataFormatString="{0:c}" HeaderText="Price" />
                    <asp:BoundField DataField="homeUpgradePrice" DataFormatString="{0:c}" HeaderText="Upgrade Price" />
                    <asp:BoundField DataField="homeTotal" DataFormatString="{0:c}" HeaderText="Total" />
                </Columns>
            </asp:GridView>
           

        </asp:Panel>


    </form>

    </body>
</html>
