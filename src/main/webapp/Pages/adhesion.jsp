<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Payment - Brand</title>
    <link rel="stylesheet" href="../css/adhesion_assets/bootstrap/css/bootstrap.min.css?h=11ac1ec3fb3954cebf1fdd43cbdb6204">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Montserrat:400,400i,700,700i,600,600i">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.css">
    <link rel="stylesheet" href="../css/adhesion_assets/css/styles.min.css?h=79bfbb6dac681c557ba7273d6c2d180a">
</head>

<body>
    <main class="page payment-page">
        <section class="clean-block payment-form dark">
            <div class="container">
                <div class="block-heading" style="padding-top: 30px;">
                    <h2 class="text-info" style="font-size: 34.128px;">Join us in our club</h2>
                    <p>You will make the payment and a request to the president will be sent, you will have an answer for 3 days maximum</p>
                </div>
                <form action="<%=request.getContextPath()%>/Account/JoinUs" method="post">
                    <div class="products">
                        <h3 class="title">Checkout</h3>
                        <div class="item"><span class="price">150 MAD</span>
                            <p class="item-name">Club Membership</p>
                        </div>
                    </div>
                    <div class="card-details">
                        <h3 class="title">Credit Card Details</h3>
                        <div class="row">
                            <div class="col-sm-7">
                                <div class="mb-3"><label class="form-label" for="card_holder">Card Holder</label><input class="form-control" type="text" id="card_holder" placeholder="Card Holder" name="card_holder"></div>
                            </div>
                            <div class="col-sm-5">
                                <div class="mb-3"><label class="form-label">Expiration date</label>
                                    <div class="input-group expiration-date"><input class="form-control" type="text" placeholder="MM" name="expiration_month"><input class="form-control" type="text" placeholder="YY" name="expiration_year"></div>
                                </div>
                            </div>
                            <div class="col-sm-8">
                                <div class="mb-3"><label class="form-label" for="card_number">Card Number</label><input class="form-control" type="text" id="card_number" placeholder="Card Number" name="card_number"></div>
                            </div>
                            <div class="col-sm-4">
                                <div class="mb-3"><label class="form-label" for="cvc">CVC</label><input class="form-control" type="text" id="cvc" placeholder="CVC" name="cvc"></div>
                            </div>
                            <div class="col-sm-12">
                                <div class="mb-3"><button class="btn btn-primary d-block w-100" type="submit" value="${id}" name="id">Proceed</button></div>
                            </div>
                        </div>
                    </div>
                </form>
            </div>
        </section>
    </main>
    <!-- Start: Footer Dark -->
    <footer class="page-footer dark" style="padding-top: -0px;">
        <div class="footer-copyright">
            <p>© 2022 Copyright Text</p>
        </div>
    </footer>
    <!-- End: Footer Dark -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/baguettebox.js/1.10.0/baguetteBox.min.js"></script>
    <script src="../css/adhesion_assets/js/script.min.js?h=1665ca77920bb6c16d0d2edee4a77966"></script>
</body>

</html>