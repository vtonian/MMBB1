<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GuestHouse.aspx.cs" Inherits="MMBB1.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-sm-12 col-md-4">
            <h2>Guesthouse</h2>
            <p>
                This wonderful cottage offers you all the comforts you could wish for. Have an excellent night sleep on our classic four poster queen bed and awake in the morning to views of sun laden green pastures. Amenities include a fully equipped galley kitchen, dining area and living room with Wi-Fi, stereo and cable access. The deck has a propane grill, table and chairs for dining alfresco or just basking in sun and nature.
            </p>
            <p>
                Sorry, no smoking in the guesthouse. We welcome pets, but please make a request at the time of your reservation.
            </p>
            <h3 id="rates">
                Rates
            </h3>
            <p>
                Guest House<br />
                $150 per night, 2-night minimum<br />
                $950 for a full week
            </p>
            <p>
                Rates are for a one-bedroom guesthouse. A queen sofa sleeper is located in the living room. The Guest House can accomodate up to a maximum of four people.
            </p>
            <p>
                Check In after 2:00 PM<br />
                Check Out by 12: Noon
            </p>
            <p>
                We require a deposit to reserve advance dates; the balance is due at check-in. We accept credit cards. Sales tax of 8.6% will be added to the rental fee.
            </p>
            <h3 id="availability">
                Availability
            </h3>
            <p>
                <a href="availability.aspx">Click here</a> to see guesthouse availability.
            </p>
        </div>
        <div class="col-sm-12 col-md-8">
            <img src="images/porch-withborder.jpg" class="img-fluid mx-auto d-block" style="padding: 0 20px 10px 0 ;"/>
            <img src="images/livingrm-withborder.jpg" class="img-fluid mx-auto d-block"/>
            <img src="images/bed-withborder.jpg" class="img-fluid mx-auto d-block"/>
        </div>
    </div>
</asp:Content>
