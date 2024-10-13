<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Ch3</title>
</head>
<body>
    <h1>Chapter Three Asssignment</h1>
    <h2>Name: Ahmed ibrahim hefow</h2>
    <h2>ID: C1210086</h2>
    <h2>Name: YASSER MOHAMUD ISMAIL</h2>
    <h2>ID: C1210124</h2>
    <h2>Class: CA212</h2>
    <?php
        echo "<br>Assignment 1<br>";
        $num=9;
        if($num % 2==0){
            echo $num . "is even";
        }else{
            echo $num . "is odd";
        };
        echo "<br>Assignment 2<br>";
        $n=6;
        $fact=1;
        for($i=1; $i<=$n; $i++){
            $fact *=$i;
        };
        echo $fact . " ";

        echo "<br>Assignment 3<br>";
        // Assignment 3
        $number = 27;
        do {
            if ($number % 2 == 0) {
                echo $number . " ";
            }
            $number--;
        } while ($number >= 2);
        
        echo "<br>Assignment 4<br>";  // Separator for clarity
        
        // Assignment 4
        $num_1 = 70;
        $num_2 = 42;
        
        function min_number($a, $b) {
            return ($a < $b) ? $a : $b;
        }
        
        $min_num = min_number($num_1, $num_2);
        
        $i = 1;
        while ($i <= 44) {
            if ($num_1 % $i == 0 && $num_2 % $i == 0) {
                echo $i . " ";
            }
            $i++;
        }
        
        echo "<br>Assignment 5<br>";  // Separator for clarity
        
        // Assignment 5
        $Number_1 = 70;
        $number_2 = 40;
        $hcf = 1;
        
        $min_number = min_number($Number_1, $number_2);
        echo $min_number . "<br>";
        
        for ($i = 1; $i <= $min_number; $i++) {
            if ($Number_1 % $i == 0 && $number_2 % $i == 0) {
                $hcf = $i;
            }
        }
        echo $hcf . " ";
        
        echo "<br>Assignment 6<br>";  // Separator for clarity
        
        // Assignment 6
        $num = 90;
        
        while ($num >= 12) {
            for ($j = 1; $j <= $num; $j++) {
                if ($num % $j == 0) {
                    echo $num . " ";
                    break;
                }
            }
            $num--;
        }
    ?>

</body>
</html>