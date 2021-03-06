//+------------------------------------------------------------------+
//|                                                 comm_signals.mq4 |
//|                        Copyright 2018, MetaQuotes Software Corp. |
//|                                             https://www.mql5.com |
//+------------------------------------------------------------------+
#property copyright "Copyright 2018, MetaQuotes Software Corp."
#property link      "https://www.mql5.com"
#property version   "1.00"
#property strict
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double GetSignal_RSI(ENUM_TIMEFRAMES tm,int rsip)
  {
//如果含有GPB和JPY的货币，那么提高风险意识，增大RSI的周期。
   int p=rsip;
   if(StringFind(Symbol(),"GBP")!=-1)
     {
      p=rsip+8;
     }

   if(StringFind(Symbol(),"JPY")!=-1)
     {
      p=rsip+16;
     }

   return iRSI(Symbol(),tm,p,PRICE_CLOSE,0);

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int GetSignal_LastOC()
  {
   double lopen=iOpen(Symbol(),PERIOD_M30,0);
   double lclose=iClose(Symbol(),PERIOD_M30,0);

   if((lopen-lclose)/lopen>0.000)
     {
      return 1;
     }

   if((lclose-lopen)/lclose>0.000)
     {
      return -1;
     }
   return 0;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double GetSignal_BB_UPPER(int shift)
  {
   double top=iBands(Symbol(),PERIOD_M5,17,2,0,PRICE_CLOSE,MODE_UPPER,shift);
   return top;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double GetSignal_BB_LOWER(int shift)
  {
   double bom=iBands(Symbol(),PERIOD_M5,17,2,0,PRICE_CLOSE,MODE_LOWER,shift);
   return bom;
  }
//+------------------------------------------------------------------+
//|判断之前shift的宽度，如果大于设定值，那么就会返回是                                                                  |
//+------------------------------------------------------------------+
double GetSignal_BB_Width(ENUM_TIMEFRAMES p)
  {
   double top = iBands(Symbol(),p,17,2,0,PRICE_CLOSE,MODE_UPPER,0);
   double bom = iBands(Symbol(),p,17,2,0,PRICE_CLOSE,MODE_LOWER,0);
   double re=MathAbs(top-bom)/vPoint;
   Print(re);
   return re;
  }
//+------------------------------------------------------------------+
//| 根据BB的均线方向来判断买卖。                                                                 |
//+------------------------------------------------------------------+
double GetSignal_BB(int shift)
  {
   double l1 = iBands(Symbol(),PERIOD_M5,17,2,0,PRICE_CLOSE,MODE_MAIN,shift+5);
   double l  = iBands(Symbol(),PERIOD_M5,17,2,0,PRICE_CLOSE,MODE_MAIN,shift);
   double l0 = iBands(Symbol(),PERIOD_M5,17,2,0,PRICE_CLOSE,MODE_MAIN,shift-5);

   if(l0<l && l<l1 && Ask<l1 && Ask<l0)
     {
      return 1;//buy
     }
   if(l0>l && l>l1 && Bid>l1 && Bid>l0)
     {
      return -1;
     }

   return 0;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
double GetSignal_ATR(int InpAtrPeriod)
  {
   return(iCustom(Symbol(),PERIOD_M15, "ATR", InpAtrPeriod, 0, 0));
  }
  
//===================================================================================================================================================
//===================================================================================================================================================
int GetSignaliMA(int iMA_Period,double iMA_OpenDistance)
  {
   int Signal=0;

   double iMA_Signal=iMA(Symbol(),PERIOD_M5,iMA_Period,0,MODE_LWMA,PRICE_CLOSE,0);

   double Ma_Bid_Diff=MathAbs(iMA_Signal-Bid)/vPoint;

   if(Ma_Bid_Diff > iMA_OpenDistance && Bid > iMA_Signal) Signal = -1;
   if(Ma_Bid_Diff > iMA_OpenDistance && Bid < iMA_Signal) Signal = 1;

   return(Signal);
  }
//+------------------------------------------------------------------+

int GetSignalMAShift(int shift,double distance)
  {
   int Signal=0;
   double ma=iMA(Symbol(),PERIOD_M5,30,0,MODE_LWMA,PRICE_CLOSE,shift);

   double diff=MathAbs(ma-Bid)/vPoint;

   if(diff > distance && Bid > ma) Signal = -1;
   if(diff > distance && Bid < ma) Signal = 1;

   return(Signal);

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int GetSignal_RSI_M5_D1_SELL()
  {
   int Signal=0;

   if(iRSI(Symbol(),PERIOD_M5,8,PRICE_CLOSE,0)>80)
     {
      Signal+=-1;
     }
   if(iRSI(Symbol(),PERIOD_M15,8,PRICE_CLOSE,0)>80)
     {
      Signal+=-1;
     }
   if(iRSI(Symbol(),PERIOD_M30,8,PRICE_CLOSE,0)>80)
     {
      Signal+=-1;
     }
   if(iRSI(Symbol(),PERIOD_H4,8,PRICE_CLOSE,0)>80)
     {
      Signal+=-1;
     }
   if(iRSI(Symbol(),PERIOD_D1,8,PRICE_CLOSE,0)>80)
     {
      Signal+=-1;
     }
   return Signal;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
int GetSignal_RSI_M5_D1_BUY()
  {
   int Signal=0;
   if(iRSI(Symbol(),PERIOD_M5,8,PRICE_CLOSE,0)<20)
     {
      Signal+=1;
     }
   return Signal;

  }
//+------------------------------------------------------------------+
