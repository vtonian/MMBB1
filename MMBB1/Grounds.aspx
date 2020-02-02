<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Grounds.aspx.cs" Inherits="MMBB1.Grounds" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-12 col-md-4">
            <h2>Barn and Grounds</h2>
            <p>
                A beautiful, peaceful, pastoral setting awaits you. Be sure and visit our lovely French country post and beam barn and see the beautiful detailing.</p>
            <p>
                Then take a walk along our woodland path through Madronas, Douglas Firs, and Salal and stop for a time at our quiet bench and birdwatch.</p>
            <p>
                Finish your walk at our serene pond surrounded by mature woods and plenty of wildlife.
            </p>
            <br />
            <h3 id="availability">
                Availability
            </h3>
            <p>
                <a href="availability.aspx">Click here</a> to see guesthouse availability.
            </p>
        </div>
        <div class="col-sm-12 col-md-8">
            <img src="images/barn-withborder.jpg" class="img-fluid mx-auto d-block"/>
            <img src="images/porch-withborder.jpg" class="img-fluid mx-auto d-block" style="padding: 0 20px 17px 0;"/>
            <img src="images/pond-withborder.jpg" class="img-fluid mx-auto d-block"/>
        </div>
    </div>
</asp:Content>
