<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Project.Admin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Form List</title>
</head>

    <style>

       .middle {
        display: block;
        width: auto;
        margin: -1px auto;
        border: 2px solid black;
        color: white;
        background-color: black;
        font-size: larger;
        border-width: 4px;
        border-radius: 0px;
        border-radius: 0px;
        padding: 20px 91px;
    }


    #p {
        padding: 0px 0px;
    }

    .right {
        display: inline-block;
        color: white;
        position: absolute;
        right: 154px;
        top: 11px;
        font-size: 35px;
        border-width: 22px;
        border-radius: 37px;
    }


    
    .btn {
        margin: 4px 8px;
        color: white;
        background-color: black;
        padding: 0px 0px;
        font-size: 17px;
        border: 2px solid black;
        border-radius: 12px;
        border-width: 10px;
        cursor: pointer;
    }

    #sign:hover {
        background-color: gray;
        border: 2px solid gray;
        border-width: 10px;
        border-radius: 10px;
    }


body, h1, form {
    margin: 0;
    padding: 10;
}

body {
    background-color: #f0f0f0;
    font-family: Arial, sans-serif;
}

div.container {
    max-width: 800px;
    margin: 0 auto;
    padding: 20px;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
}

h1 {
    text-align: center;
    margin-bottom: 20px;
    color: #333333;
}


form {
    display: flex;
    flex-direction: column;
}


#GridView1 {
    border-collapse: collapse;
}

#GridView1 th {
    background-color: #f0f0f0;
    padding: 10px;
    text-align: left;
}


#GridView1 tr:nth-child(even) {
    background-color: #f9f9f9;
}

#GridView1 tr:hover {
    background-color: #e0e0e0;
}


#GridView1 td {
    padding: 10px;
    border: 1px solid #dddddd;
}


input[type="submit"] {
    background-color: #333333;
    color: #ffffff;
    border: none;
    padding: 10px 20px;
    border-radius: 5px;
    cursor: pointer;
}

input[type="submit"]:hover {
    background-color: #555555;
}



    </style>
<body>


      <header class="header">


        <div class="middle">
            Admin Portal

        </div>

        <div class="right">

            <a href="./Homepage.html"><button class="btn" id="sign">Go back</button></a>


        </div>


    </header>

    <br /><br />

    <h1>Bookings</h1>
    <form id="form1" runat="server">
    <div>

      
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LinqDataSource1" Width="892px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                <asp:BoundField DataField="Contact" HeaderText="Contact" SortExpression="Contact" />
                <asp:BoundField DataField="PickUp" HeaderText="PickUp" SortExpression="PickUp" />
                <asp:BoundField DataField="DropOff" HeaderText="DropOff" SortExpression="DropOff" />
            </Columns>
        </asp:GridView>


        

        <asp:LinqDataSource ID="LinqDataSource1" runat="server" ContextTypeName="Project.newlinqDataContext" EntityTypeName="" TableName="Bookings">
        </asp:LinqDataSource>


        

    </div>

        <br />
        <br />
        <br />

          <h1>Sign Up Users</h1>
        <br /><br />
        <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="LinqDataSource2" Width="894px">
            <Columns>
                <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                <asp:BoundField DataField="username" HeaderText="username" SortExpression="username" />
                <asp:BoundField DataField="password" HeaderText="password" SortExpression="password" />
                <asp:BoundField DataField="role" HeaderText="role" SortExpression="role" />
            </Columns>
        </asp:GridView>
        <asp:LinqDataSource ID="LinqDataSource2" runat="server" ContextTypeName="Project.newlinqDataContext" EntityTypeName="" TableName="users">
        </asp:LinqDataSource>
    </form>
</body>
</html>
