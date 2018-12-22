//+------------------------------------------------------------------+
//|在非DEBUG得时候运行此函数                                           |
//+------------------------------------------------------------------+
bool SetEA()
  {
   bool re=false;
   
   string sym=StringSubstr(Symbol(),0,6);

   if(sym=="NZDCAD") re=NZDCAD();
   if(sym=="EURGBP") re=EURGBP();
   if(sym=="EURSGD") re=EURSGD();
   if(sym=="NZDJPY") re=NZDJPY();
   if(sym=="EURUSD") re=EURUSD();
   if(sym=="EURNZD") re=EURNZD();
   if(sym=="AUDUSD") re=AUDUSD();
   if(sym=="GBPCAD") re=GBPCAD();
   if(sym=="GBPUSD") re=GBPUSD();
   if(sym=="EURCAD") re=EURCAD();
   if(sym=="EURAUD") re=EURAUD();
   if(sym=="USDSGD") re=USDSGD();
   if(sym=="EURCHF") re=EURCHF();
   if(sym=="GBPJPY") re=GBPJPY();
   if(sym=="AUDCAD") re=AUDCAD();
   if(sym=="USDJPY") re=USDJPY();
   if(sym=="AUDJPY") re=AUDJPY();
   if(sym=="USDCAD") re=USDCAD();

   if(!re)
     {
      //主要是因为在init的时候,这两个参数会被判断是否扩大10倍,如果是,那么不重新复制就很麻烦.
      TakeProfit                                  = 20;
      RZDistance                                  = 50;//可变
     }

   return re;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool NZDCAD()
  {
//
   TakeProfit         = 30;
   StepATRMultiplier  = 3;
   RZBars             = 40;
   RZDistance         = 35;
   return true;
  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EURGBP()
  {
//
   TakeProfit         = 30;
   StepATRMultiplier  = 3.6;
   RZBars             = 40;
   RZDistance         = 40;
   return true;
  }
//+------------------------------------------------------------------+

bool EURSGD()
  {
//
   TakeProfit         = 35;
   StepATRMultiplier  = 3.4;
   RZBars             = 20;
   RZDistance         = 50;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool NZDJPY()
  {
//
   TakeProfit         = 20;
   StepATRMultiplier  = 3.4;
   RZBars             = 20;
   RZDistance         = 50;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EURUSD()
  {
//463	12626.14	662	3.42	19.07	8055.32	7.55%	0.00000000	TakeProfit=37 	LotMutiple=1.9 	BaseGridNum=4 	StepATRMultiplier=3.6 	RZBars=24 	RZDistance=50	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=0 	ShowLine=0 	StopLossPercent=0 	ManualLotPer001=1000 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=0 	AutoLotPer001=30000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	MaxLot001=100 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHour=1 	IsOverlapping=0 	ProfitPer
   TakeProfit        = 37;
   LotMutiple        = 1.9;
   StepATRMultiplier = 3.6;
   RZBars            = 24;
   RZDistance        = 50;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EURNZD()
  {
//
   TakeProfit         = 25;
   StepATRMultiplier  = 3;
   RZBars             = 30;
   RZDistance         = 80;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool AUDUSD()
  {
//70	15658.99	432	5.67	36.25	3677.23	3.67%	0.00000000	TakeProfit=47 	LotMutiple=1.5 	BaseGridNum=2 	StepATRMultiplier=4.4 	RZBars=39 	RZDistance=40	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=0 	ShowLine=0 	StopLossPercent=0 	ManualLotPer001=1000 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=0 	AutoLotPer001=30000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	MaxLot001=100 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHour=1 	IsOverlapping=0 	ProfitPer
   TakeProfit        =  47;
   LotMutiple        =  1.5;
   StepATRMultiplier =  4.4;
   RZBars            =  39;
   RZDistance        =  40;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool GBPCAD()
  {
//
   TakeProfit         = 35;
   StepATRMultiplier  = 3.6;
   RZBars             = 45;
   RZDistance         = 80;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool AUDNZD()
  {
//
   TakeProfit         = 15;
   StepATRMultiplier  = 2.4;
   RZBars             = 25;
   RZDistance         = 20;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool GBPUSD()
  {
//162	23447.81	533	3.61	43.99	7245.74	6.78%	0.00000000	TakeProfit=35 	LotMutiple=2 	BaseGridNum=2 	StepATRMultiplier=3.6 	RZBars=24 	RZDistance=60	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=0 	ShowLine=0 	StopLossPercent=0 	ManualLotPer001=1000 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=0 	AutoLotPer001=30000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	MaxLot001=100 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHour=1 	IsOverlapping=0 	ProfitPer
   TakeProfit        = 35;
   LotMutiple        = 2;
   StepATRMultiplier = 3.6;
   RZBars            = 24;
   RZDistance        = 60;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EURCAD()
  {
//
   TakeProfit         = 35;
   StepATRMultiplier  = 3.4;
   RZBars             = 25;
   RZDistance         = 80;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EURAUD()
  {
//
   TakeProfit         = 30;
   StepATRMultiplier  = 2.6;
   RZBars             = 35;
   RZDistance         = 80;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool USDSGD()
  {
//
   TakeProfit         = 35;
   StepATRMultiplier  = 5.0;
   RZBars             = 25;
   RZDistance         = 40;
   return true;

  }
//+------------------------------------------------------------------+
//|                                                                  |
//+------------------------------------------------------------------+
bool EURCHF()
  {
//33	8868.41	231	9.36	38.39	2593.67	2.48%	0.00000000	TakeProfit=49 	LotMutiple=1.9 	BaseGridNum=4 	StepATRMultiplier=3.2 	RZBars=21 	RZDistance=40	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=0 	ShowLine=0 	StopLossPercent=0 	ManualLotPer001=1000 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=0 	AutoLotPer001=30000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	MaxLot001=100 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHour=1 	IsOverlapping=0 	ProfitPer
   TakeProfit         = 49;
   StepATRMultiplier  = 3.2;
   RZBars             = 21;
   RZDistance         = 40;
   return true;

  }
//+------------------------------------------------------------------+

bool GBPJPY()
  {
//
   TakeProfit         = 40;
   StepATRMultiplier  = 2.5;
   RZBars             = 30;
   RZDistance         = 60;
   return true;

  }
//+------------------------------------------------------------------+

bool AUDCAD()
  {
//   
   TakeProfit         = 35;
   StepATRMultiplier  = 3.0;
   RZBars             = 35;
   RZDistance         = 50;
   return true;

  }
//+------------------------------------------------------------------+
bool USDJPY()
  {
//941	58658.15	1538	3.55	38.14	26817.43	23.30%	0.00000000	TakeProfit=27 	LotMutiple=1.9 	BaseGridNum=2 	StepATRMultiplier=2.6 	RZBars=21 	RZDistance=30	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=0 	ShowLine=0 	StopLossPercent=0 	ManualLotPer001=1000 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=0 	AutoLotPer001=30000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	MaxLot001=100 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHour=1 	IsOverlapping=0 	ProfitPer
   TakeProfit        = 27;
   StepATRMultiplier = 2.6;
   RZBars            = 21;
   RZDistance        = 30;

   return true;

  }
//+------------------------------------------------------------------+
bool AUDJPY()
  {
//401	85289.67	1213	4.18	70.31	21729.11	13.51%	0.00000000	TakeProfit=39 	LotMutiple=1.9 	BaseGridNum=2 	StepATRMultiplier=3.6 	RZBars=33 	RZDistance=30	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=0 	ShowLine=0 	StopLossPercent=0 	ManualLotPer001=1000 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=0 	AutoLotPer001=30000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	MaxLot001=100 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHour=1 	IsOverlapping=0 	ProfitPer
   TakeProfit        = 39;
   StepATRMultiplier = 3.6;
   RZBars            = 33;
   RZDistance        = 30;

   return true;

  }
//+------------------------------------------------------------------+

//+------------------------------------------------------------------+
bool USDCAD()
  {
//58	29634.62	1457	1.80	20.34	15481.05	14.61%	0.00000000	TakeProfit=20 	StepATRMultiplier=4.4 	RZBars=45 	RZDistance=35	MagicNumberBuy=1234 	MagicNumberSell=4321 	ShowInfo=1 	ShowLine=1 	StopLossPercent=10 	ManualLotPer001=500 	AutoCancelPending=1 	EnableVirtualOrder=1 	VirtualOrderATRMultiplier=4 	AutoMode=1 	AutoLotPer001=10000 	MaxTrades=10 	MaxSymbolInPosition=1 	MaxSpreadPoint=40 	TimeFilter=1 	NewsFilter=1 	NewsOffset=2 	NewsVhigh=1 	NewsVmedium=1 	NewsVlow=0 	BeforeNewsStopMin=5 	AfterNewsStopMin=5 	TPDecreasePercent=15 	LotMutiple=1.9 	MaxLot001=100 	BaseGridNum=2 	StepATRPeriod=14 	PipStepExponent=1.1 	GridSplitHou
   TakeProfit        = 20;
   StepATRMultiplier = 4.4;
   RZBars            = 45;
   RZDistance        = 35;
   return true;
  }
//+------------------------------------------------------------------+
