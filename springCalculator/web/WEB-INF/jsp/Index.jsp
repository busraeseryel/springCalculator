<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js">
        
    </script>
</head>
<body>
    <form action="springCalculator" method="post">
        <div id ='title'><h1>Calculator Spring MVC Example</h1> </div>
        <h3>1.Sayı : <input type="number" id="sayi1" name="sayi1" pattern=“\d*” placeholder="Sayı Giriniz"required></h3>
        <h3>2.Sayı : <input type="number" id="sayi2" name="sayi1" pattern=“\d*” placeholder="Sayı Giriniz"required></h3>
        <h3>İşlem  :  <select id="islemsec">

                <option value="0">Seçiniz</option>
                <option value="1">Toplama</option>
                <option value="2">Çıkarma</option>
                <option value="3">Çarpma</option>
                <option value="4">Bölme</option>
            </select></h3>
        <h3>Sonuç :<input type="text" id="result" DISABLED></h3>

    </form>







<script>

$(document).ready(function () {
            $("#islemsec").change(function () {
                var sayi1 = $("#sayi1").val();
                var sayi2 = $("#sayi2").val();
                var type = $("#islemsec").val();
                alert(sayi1);
                alert(sayi2);
                alert(type);
                $.ajax({
                    type: "POST",
                    url: "/CalculatorController/index",

                    data: {sayi1: sayi1, sayi2: sayi2, type: type},
                    cache: false,
                    success: function (data) {
                        alert(data);
                        $("#result").val(data);
                    }
                });
            });
        });


</script>
</body>
</html>
