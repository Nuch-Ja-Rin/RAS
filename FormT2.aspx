<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="FormT2.aspx.cs" Inherits="RAS_System.FormT2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <br />
    <br />
    <div id="content-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-2">
                </div>
                <div class="col-lg-10">

                    <div class="main-panel" style="background-color: white">
                        <div class="content-wrapper">
                            <div class="card">
                                <div class="card-body">

                                    <div class="row">
                                        <div class="col-sm-2">                                         
                                            <img src="images/logosut.gif" style="text-align: center" width="60%"/>
                                        </div>
                                        <div class="col-sm-10">
                                            <h1 class="card-h1">คำร้องขอชำระเงินค่าลงทะเบียนล่าช้า</h1>
                                            <h3 class="card-h3">Request for late payment of registration fee</h3>
                                        </div>
                                    </div>
                                    <hr />
                                    <b>เรียน	ผู้อำนวยการศูนย์บริหารการศึกษา To Director of The Center for Educational Service</b><br />
                                    <br />
                                    <div class="form-group row">
                                        <asp:Label ID="Label1" runat="server" Text="ข้าพเจ้า ( นาย / นาง / นางสาว )" CssClass="col-sm-3 col-form-label"></asp:Label>
                                        <div class="col-sm-7">

                                            <asp:TextBox ID="txtName" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <asp:Label ID="Label2" runat="server" Text="เลขประจำตัว" CssClass="col-sm-3 col-form-label"></asp:Label>
                                        <div class="col-sm-7">
                                            <asp:TextBox ID="txtID" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <asp:Label ID="Label3" runat="server" Text="สำนักวิชา" CssClass="col-sm-3 col-form-label"></asp:Label>
                                        <div class="col-sm-7">
                                            <asp:TextBox ID="txtFac" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group row">
                                        <asp:Label ID="Label4" runat="server" Text="สาขาวิชา" CssClass="col-sm-3 col-form-label"></asp:Label>
                                        <div class="col-sm-7">
                                            <asp:TextBox ID="txtDegree" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <asp:Label ID="Label5" runat="server" Text="มีความประสงค์ขอชำระเงินค่าธรรมเนียมการลงทะเบียนเรียน ภาคเรียนที่" CssClass="col-sm-7 col-form-label"></asp:Label>
                                        <div class="col-sm-1">
                                            <asp:DropDownList ID="ddTerm" runat="server" CssClass="form-control form-control-lg">
                                                <asp:ListItem>1</asp:ListItem>
                                                <asp:ListItem>2</asp:ListItem>
                                                <asp:ListItem>3</asp:ListItem>
                                            </asp:DropDownList>
                                        </div>


                                    </div>
                                    <div class="form-group row">
                                        <asp:Label ID="Label6" runat="server" Text="ปีการศึกษา" CssClass="col-sm-2 col-form-label ;text-center"></asp:Label>
                                        <div class="col-sm-2">
                                            <asp:TextBox ID="txtYear" runat="server" CssClass="form-control"></asp:TextBox>
                                        </div>

                                    </div>


                                    <div class="col-sm-10" style="right: auto">
                                        <asp:Button ID="btnSubmit" CssClass="btn btn-success mr-2" runat="server" Text="Submit" />
                                        <asp:Button ID="btnCancle" CssClass="btn btn-light" runat="server" Text="Cancel" />
                                    </div>

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
