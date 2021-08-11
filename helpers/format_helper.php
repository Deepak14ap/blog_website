<?php
/*
* Format the Date
*/
    function formatDate($date){
        return date('F j, Y, g:i a',strtotime($date));
    }
/*
* Format the Date
*/
//The strrpos() function finds the position of the last occurrence of a string inside another string.
    function shortenText($text,$chars=450){
        $text=$text." ";
        $text=substr($text,0,$chars);
        $text=substr($text,0,strrpos($text,' '));//so that word do not get cut
        $text=$text."...";
        return $text;
    }
?>
