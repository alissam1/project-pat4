<?php
$db = new PDO('mysql:host=localhost;dbname=dbalissam1','alissam1' , 'website2019winter');
$db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
$db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);