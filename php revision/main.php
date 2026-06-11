<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width,initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="container"> This is my first php website


    </div>
    <?php 

    echo "Hello World";
    $variable1 = 34;
    $variable2 = 43;

    echo $variable1 + $variable2;

    // OPERATORS IN PHP

    // Arithmetic Operators 
    echo "<br>";
    echo "The value of varible1 + variable2 is ";
    echo $variable1 + $variable2;
    echo "<br>";
    echo "The value of varible1 - variable2 is ";
    echo $variable1 - $variable2;
    echo "<br>";
    echo "The value of varible1 * variable2 is ";
    echo $variable1 * $variable2;
    echo "<br>";
    echo "The value of varible1 / variable2 is ";
    echo $variable1 / $variable2;
    echo "<br>";

    // Comparison Operators
    // echo "<h1> Comparison Operators </h1>";
    echo "The value of 1==4 is ";
    echo var_dump(1==4);
    
    echo "<br>";
    echo "The value of 1!=4 is ";
    echo var_dump(1!=4);

    echo "<br>";

    echo $variable1++;
    echo "<br>";
    echo $variable1--;
    echo "<br>";
    echo ++$variable1;
    echo "<br>";
    echo --$variable1;

    ?>

</body>
</html>