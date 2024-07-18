<?php

// app/Helpers/NumberToWords.php

function amountToWords($amount)
{
    $number = number_format($amount, 2, '.', '');
    $no = explode('.', $number);
    $temp = $no[0];
    $decimal = $no[1];
    $digits = array('', 'One', 'Two', 'Three', 'Four', 'Five', 'Six', 'Seven', 'Eight', 'Nine');
    $digits2 = array('Ten', 'Eleven', 'Twelve', 'Thirteen', 'Fourteen', 'Fifteen', 'Sixteen', 'Seventeen', 'Eighteen', 'Nineteen');
    $digits3 = array('Twenty', 'Thirty', 'Forty', 'Fifty', 'Sixty', 'Seventy', 'Eighty', 'Ninety');
    $digits4 = array('Thousand', 'Lakh', 'Crore');

    $res = '';

    $words = convert_number($temp);
    // $words .= " Rupees ";

    if ($decimal > 0) {
        $words .= " and ";
        $words .= convert_number($decimal);
        $words .= " Paise";
    }

    return $words." only";
}

function convert_number($number)
{
    if (($number < 0) || ($number > 999999999)) {
        return "Number out of range";
    }

    $Gn = floor($number / 10000000);  /* Crore */
    $number -= $Gn * 10000000;
    $kn = floor($number / 100000);     /* lakhs */
    $number -= $kn * 100000;
    $Hn = floor($number / 1000);      /* thousand */
    $number -= $Hn * 1000;
    $Dn = floor($number / 100);       /* Tens (deca) */
    $number = $number % 100;               /* Ones */
    $n = "";

    if ($Gn) {
        $n .= convert_number($Gn) . " Crore";
    }

    if ($kn) {
        $n .= (empty($n) ? "" : " ") . convert_number($kn) . " Lakh";
    }

    if ($Hn) {
        $n .= (empty($n) ? "" : " ") . convert_number($Hn) . " Thousand";
    }

    if ($Dn) {
        $n .= (empty($n) ? "" : " ") . convert_number($Dn) . " Hundred";
    }

    $ones = array("", "One", "Two", "Three", "Four", "Five", "Six", "Seven", "Eight", "Nine", "Ten", "Eleven", "Twelve", "Thirteen", "Fourteen", "Fifteen", "Sixteen", "Seventeen", "Eighteen", "Nineteen");
    $tens = array("", "", "Twenty", "Thirty", "Forty", "Fifty", "Sixty", "Seventy", "Eighty", "Ninety");

    if ($number > 0) {
        $n .= (empty($n) ? "" : " ") . "";
        if ($number < 20) {
            $n .= $ones[$number];
        } else {
            $n .= $tens[floor($number / 10)];
            $n .= " " . $ones[$number % 10];
        }
    }

    return $n;
}


// To use this Ensure the `intl` PHP extension is installed on your server or run: sudo apt-get install php-intl

function numberToWordsIndianCurrency($number)
{
    $formatter = new NumberFormatter("en_IN", NumberFormatter::SPELLOUT);

    // Format the number as words using the Spellout rule for Indian English
    $words = ucfirst($formatter->format($number));

    // Append 'Rupees Only' if it's an integer, else include decimal part
    if (strpos($number, '.') !== false) {
        list($integer, $decimal) = explode('.', $number);
        $decimal = (int)$decimal;
        $decimal_words = ucfirst($formatter->format($decimal));
        $words .= " and $decimal_words Paise only";
    } else {
        $words .= " only";
    }

    return $words;
}