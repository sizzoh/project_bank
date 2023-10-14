<%-- 
    Document   : addproduct
    Created on : Oct 21, 2022, 8:00:34 AM
    Author     : window 10 pro
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
        <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.1/font/bootstrap-icons.css" 
              rel="stylesheet" />
        <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css">
        <link rel="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js">
     <title>add product</title>
     </head>
     <body>
        <div class="container-fluid bg-2 txt-center">
            <div class="row">
                <div class="col-sm-8">
                    <form class="form-horizontal" id ="frm-addproduct">
                        <table class="table table-bordered">
                            <caption>add product</caption>
                            <tr>
                                <th>product id</th>
                                <th>product name</th>
                                <th>product price</th>
                                <th>product </th>
                                <th>product qty</th>
                                
                                
                                <th>amount</th>
                                <th>option</th>
                            </tr>
                            <tr>
                            <td>
                                <input type="txt" class="form-control" placeholder="id" id="id" name="id" size="25px" required="">
                            </td>
                            <td>
                                <label id="pname" name="pname"></label>
                            </td>
                            <td> 
                                <label id="price" name="pricre"></label>
                            </td>
                            <td>
                                <input type="number" class="form-control price" id="qty" name="qty" placeholder="qty"
                                       min="1" value="1" required="">
                            </td>
                            <td>
                                <input type="txt" class="form-control" id="total-cost" name="total-cost" placeholder="total-cost" disabled="">  
                            </td>
                            <td>
                                <div class="focusgurd" id="focusgurd-2" tindex="8"></div>
                                <button class="btn btn-success" type="button" onclick="addproduct()">Add<button/> 
                                
                            </td>
                            <tr/>
                            
                        </table>
                        <table class="table-bordered" id="product-list">
                            <caption>products</caption>
                            <thead>
                                <tr>
                                    <th style="width: 40px">Remove</th>
                                    <th>product id</th>
                                    <th>product name</th>
                                     <th>product price</th>
                                     <th>product </th>
                                      <th>product qty</th>
                                      <th>Amount</th>
                                </tr>
                            </thead>
                            <tbody>
                                
                            </tbody>
                        </table>
                        </div>
                <div class="col-sm-4">
                    <div class="s12 m6 offset-m4">
                        <div class="form-group" align="left">
                            <label class="form-label">Total</label>
                            <input type="txt" class="form-control" placeholder="Total" name="Total" size="50px">
                               <div/>
                        <div class="form-group" align="left">
                            <label class="form-label">pay</label>
                            <input type="txt" class="form-control" placeholder="pay" name="pay" size="30px">
                                              
                       </div
                       <div class="form-group" align="left">
                            <label class="form-label">balance</label>
                            <input type="txt" class="form-control" placeholder="balance" name="balance" size="30px">
                                              
                       </div>
                    </form> 
                    <div class="form-group" align="left">
                    <label class="control-label">status</label>
                    <select class="form-control" id="payment" name="payment" placeholder="pay status" required="">
                        <option value="">please select</option>
                        <option value="1">cash</option>  
                        <option value="">cheque</option>  
                    </select>
                   </div>
               
            <div align="rigth">
                <div class="focusgurd" id="focusgurd-2" tindex="8"></div>
                <button id="btnadd" type="button" id="save" class="button btn-info" onclick="addproduct()">print<button/> 
                <button id="clear" type="button" id="clear" class="button btn-warning"onclick="reset()">Reset<button/>                
            </div>
            
<body/>
</html>
