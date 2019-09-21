//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool IsShield()
  {
   int re = 0;

//AUDUSD 2014-2019 filtered
   re += Shield("AUDUSD",D'2009.07.13 00:00');
   re += Shield("AUDUSD",D'2009.09.02 00:00');
   re += Shield("AUDUSD",D'2010.09.01 00:00');
   re += Shield("AUDUSD",D'2011.03.21 00:00');
   re += Shield("AUDUSD",D'2011.10.04 00:00');
   re += Shield("AUDUSD",D'2011.09.09 00:00');
   re += Shield("AUDUSD",D'2012.04.30 00:00');
   re += Shield("AUDUSD",D'2013.04.11 00:00');
   re += Shield("AUDUSD",D'2013.05.09 00:00');
   re += Shield("AUDUSD",D'2014.09.08 00:00');
   re += Shield("AUDUSD",D'2015.07.01 00:00');
   re += Shield("AUDUSD",D'2015.09.01 00:00');
   re += Shield("AUDUSD",D'2016.12.29 00:00');
   re += Shield("AUDUSD",D'2017.06.01 00:00');
   re += Shield("AUDUSD",D'2017.07.07 00:00');
   re += Shield("AUDUSD",D'2017.07.25 00:00');
   re += Shield("AUDUSD",D'2017.12.08 00:00');
   re += Shield("AUDUSD",D'2017.12.11 00:00');
   re += Shield("AUDUSD",D'2017.12.18 00:00');
   re += Shield("AUDUSD",D'2018.06.08 00:00');
   re += Shield("AUDUSD",D'2018.10.01 00:00');
   re += Shield("AUDUSD",D'2018.11.30 00:00');
   re += Shield("AUDUSD",D'2018.12.04 00:00');


//EURGBP 2014-2019 filtered
   re += Shield("EURGBP",D'2015.01.08 00:00');
   re += Shield("EURGBP",D'2016.06.09 00:00');
   re += Shield("EURGBP",D'2016.11.09 00:00');
   re += Shield("EURGBP",D'2016.09.13 00:00');


//EURCAD 2009-2019 filtered
   re += Shield("EURCAD",D'2009.12.04 00:00');
   re += Shield("EURCAD",D'2009.12.15 00:00');
   re += Shield("EURCAD",D'2010.02.26 00:00');
   re += Shield("EURCAD",D'2010.09.14 00:00');
   re += Shield("EURCAD",D'2012.07.02 00:00');
   re += Shield("EURCAD",D'2015.02.24 00:00');
   re += Shield("EURCAD",D'2017.04.17 00:00');
   re += Shield("EURCAD",D'2017.11.09 00:00');




   return re>0;
  }
