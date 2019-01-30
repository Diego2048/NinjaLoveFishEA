/*
目前的仓位计划是
GBP 4000 35
JPY 5000 35

其余的3000


*/


bool SetEA()
  {
   bool re=false;

   string sym=StringSubstr(Symbol(),0,6);

   LotPer001          = 3000;
   TakeProfit         = 25;
   StepATRMultiplier  = 3.5;
   MiniGridDistance   = 20;


   //当前货币兑包含GBP，那么
   if(StringFind(sym,"GBP")!=-1)
     {
         LotPer001          = 4000;
         TakeProfit         = 40;
         StepATRMultiplier  = 4.0;
         MiniGridDistance   = 22;
     }
     
   //当前货币兑包含Jpy
   if(StringFind(sym,"JPY")!=-1)
     {
         LotPer001          = 5000;
         TakeProfit         = 50;
         StepATRMultiplier  = 4.5;
         MiniGridDistance   = 24;

     }

   return re;
  }
  
