<head>
    <body>
        <?php
            print_r ($_POST);
            foreach ($_POST as $key =>$value){
                echo "$key - $value";
            }
        ?>
    </body>
</head>