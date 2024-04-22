<style>

    .body {
        display: flex;
    }

    .leftDetails {
        width: 20%;
        background-color: white;
        border-right: 1px solid black;
        height: 100vh;
        margin: 10px;
    }

    .leftDetails ul li {
        list-style-type: none;
        margin: 20px 0;
    }

    .leftDetails button {
        background-color: white;
        border: none;
        border-bottom: 1px solid blueviolet;
        font-size: 18px;
    }

    .rightDetails {
        width: 80%;
        margin: 10px;
        background-color: aliceblue;
    }
    .rightDetails div h1{
        background-color: black;
        padding: 20px;
        margin: 1px;
        color: white;
    }
    .body .rightDetails #wishlistD {
        display: none;
    }

    .body .rightDetails #cartD {
        display: none;
    }

    .body .rightDetails #messegesD {
        display: none;
    }
</style>
<div class="body">
    <div class="leftDetails">
        <ul>
            <li><button id="my-Learning">my-Learning</button></li>
            <li><button id="wishlist">wishlist</button></li>
            <li><button id="cart">cart</button></li>
            <li><button id="messeges">messeges</button></li>
        </ul>
    </div>
    <div class="rightDetails">
        <div class="my-Learning" id="my-LearningD">
            <h1>My Learning</h1>
            <div class="cources">

            </div>
        </div>
        <div class="wishlist" id="wishlistD">
            <h1>Wishlist</h1>
        </div>
        <div class="cart" id="cartD">
            <h1>Cart</h1>
        </div>
        <div class="messeges" id="messegesD">
            <h1>Messeges</h1>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $("#my-Learning").click(function () {
            $("#my-LearningD").show();
            $("#wishlistD").hide();
            $("#cartD").hide();
            $("#messegesD").hide();

        });
        $("#wishlist").click(function () {
            $("#my-LearningD").hide();
            $("#wishlistD").show();
            $("#cartD").hide();
            $("#messegesD").hide();

        });
        $("#cart").click(function () {
            $("#my-LearningD").hide();
            $("#wishlistD").hide();
            $("#cartD").show();
            $("#messegesD").hide();

        });
        $("#messeges").click(function () {
            $("#my-LearningD").hide();
            $("#wishlistD").hide();
            $("#cartD").hide();
            $("#messegesD").show();

        });
    })
</script>