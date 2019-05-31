/*
目前的仓位计划是
GBP 3000 35
JPY 4000 35

其余的2000


*/


bool SetEA()
  {

   string sym=StringSubstr(Symbol(),0,6);

   LotPer001          = LotPer001OTHERS;
   TakeProfit         = 25;
   StepATRMultiplier  = 4.0;
   MiniGridDistance   = 25;


   //当前货币兑包含GBP，那么
   if(StringFind(sym,"GBP")!=-1)
     {
         LotPer001          = LotPer001GBP;
         TakeProfit         = 40;
         StepATRMultiplier  = 4.0;
         MiniGridDistance   = 28;
     }
     
   //当前货币兑包含Jpy
   if(StringFind(sym,"JPY")!=-1)
     {
         LotPer001          = LotPer001JPY;
         TakeProfit         = 50;
         StepATRMultiplier  = 4.5;
         MiniGridDistance   = 30;

     }
     
   //当前货币兑包含Jpy
   if(StringFind(sym,"XAU")!=-1)
     {
         LotPer001          = LotPer001XAUUSD;
         TakeProfit         = 2030;
         StepATRMultiplier  = 5.8;
         MiniGridDistance   = 2000;

     }
   
   return true;

  }
  
