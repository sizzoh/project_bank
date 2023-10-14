
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Buy page</title>
        <link hreflang="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js">
        <link href="assets/css/bootstrap.css" rel="stylesheet" />
        <!-- FONT AWESOME STYLE  -->
        <link href="assets/css/font-awesome.css" rel="stylesheet" />
        <!-- CUSTOM STYLE  -->
        <link href="assets/css/style.css" rel="stylesheet" />
        <!-- GOOGLE FONT -->
        <link href='http://fonts.googleapis.com/css?family=Open+Sans'
              rel='stylesheet' type='text/css' />
        <script
        src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

        <script src="assets/js/bootstrap.js"></script>
        <script defer="scripts.js" src="scripts.js"></script> 
        <style>
            .container{
                background:blueviolet;
                max-width: 500px;
                margin: auto;
                margin-top:5%;
                padding: 10px;
                text-align: center;
                padding-bottom:40px;
                border-radius: 12px;
              
            }
            .container-fluid{
                background:white;    
                margin-top: 5%;
                max-width: 350px;
                
            }
            .container-fluid input{
                margin: 5px;
                border-bottom: 1px solid black;
                max-width: 50%;
                margin-left: 20%;
                margin-top: 8%;
            }
            .p{
                background: blueviolet;
                color: white;
                border-radius: 24px;
                border: 3px solid white;
                max-width: 50px;
                max-height: 50px;
                text-align: center;
            }
            .p h1{
                color: white;
                font-size:50px;
                margin-top: -9px;
            }
            .container-fluid label{
                color: gray;
                line-height: 30px;
                font-size: 20px;
            }
            @media screen and (max-width: 500px){
                .container{
                    flex-direction: column;
                    
                } 
                .container-fluid{
                    width: 100%;
                    
                }
            }
        </style>
    </head>
    <body>
        <%-- <%!
    private void generateQRCode(String data, int width, int height) throws WriterException, IOException {
        QRCodeWriter qrCodeWriter = new QRCodeWriter();
        BitMatrix bitMatrix = qrCodeWriter.encode(data, BarcodeFormat.QR_CODE, width, height);
        MatrixToImageWriter.writeToStream(bitMatrix, "PNG", response.getOutputStream());
    }
%>

<%
    String qrCodeData = "https://example.com/buy";  // Replace with your buy URL
    int qrCodeWidth = 200;
    int qrCodeHeight = 200;
    
    try {
        generateQRCode(qrCodeData, qrCodeWidth, qrCodeHeight);
    } catch (WriterException | IOException e) {
        e.printStackTrace();
    }
%>
<img src="QR code.png" alt="QR Code">

        <h1>Hello World!</h1>
        --%>
        <div class="container">          
            <center> <div class="p"> <h1>p</h1></div></center>
            <div class="container-fluid">
                
                 <label for="head" class="label">Payment GateWay</label>
            <form class="form form-responsive" action="#" method="#">
                <div class="form-group">
                    
                <input type="text" name="cardname" class="form-control" placeholder="card holder" required="">
             
                </div>
                <div class="form-group">
                   
                    <input type="number" name="cardnumber" class="form-control" pattern="[0-9]"placeholder="card number" required="">
                </div>
                <div class="form-group">
                    
                    payment date:<input type="date" name="paydate" class="form-control" id="pay"placeholder="" required="">
                </div>
                <div class="form-group">
                    
                   expire date:<input type="date" name="expdate" class="form-control"required="">
                </div>
                <div class="form-group">
                    <button class="btn btn-success" type="submit">PAY</button>
                    
                </div>
                
            </form>
                 <a href="anotherPayMethod.jsp"><button class="btn btn-default" type="succeed">choose another method</button></a>
            </div>
        </div>
    </body>
</html>
