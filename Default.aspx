<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="RAS_System._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <br />
    <br />
   <%-- <div id="content-wrapper">
        <div class="container-fluid">--%>
           <%-- <div class="row">--%>
                <%--<div class="col-lg-2">
                </div>--%>
               <%-- <div class="col-lg-12">--%>
                    <div class="d-none d-md-inline-block form-inline ml-auto mr-0 mr-md-3 my-2 my-md-0">
                        <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" style="font-size: 18px">
                        <button class="btn btn-outline-info my-2 my-sm-0" type="submit" style="font-size: 18px">Search</button>
                    </div>

                    <br />
                    <br />
                    <div class="card mb-3">
                        <div class="card-header">
                            <i class="fas fa-table"></i>
                            รายการคำร้องขอ
                        </div>
                        <div class="card-body" style="width: 100%">

                            <%--<div class="table-responsive">--%>
                         <%--       <asp:GridView ID="GridView1" runat="server" CssClass="table table-hover" Width="100%">
                                    <Columns>
                                        <asp:TemplateField ShowHeader="False">
                                            <ItemTemplate>
                                                <asp:LinkButton ID="btnSubmit" runat="server" CausesValidation="false" CommandName="" CssClass="btn btn-lg btn-info" Font-Size="20px" OnClick="btnSubmit_Click" Text="Submit"></asp:LinkButton>
                                            </ItemTemplate>
                                        </asp:TemplateField>
                                    </Columns>
                                </asp:GridView>--%>



                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="table-responsivediv">
                                            <table style="width: 100%;" class="table table-hover">
                                                <tr>
                                                    <td style="width: 5%">
                                                        <asp:Label ID="lbNo" runat="server" Text="<%# Container.ItemIndex +1 %>"></asp:Label>
                                                    </td>
                                                    <td>
                                                        <asp:HyperLink ID="linkName" runat="server"><%#Eval("FormName").ToString().Trim()%></asp:HyperLink>
                                                    </td>
                                                    <td style="width: 5%">
                                                        <asp:Button ID="btnSubmit" runat="server" Text="Click!" CssClass="btn btn-lg btn-success" />
                                                    </td>
                                                </tr>
                                            </table>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>

                            </div>
                        </div>
                    <%--</div>--%>
              <%--  </div>
            </div>--%>
       <%-- </div>--%>
    <%--</div>--%>

</asp:Content>
