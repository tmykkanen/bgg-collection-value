package
{
   import flash.events.Event;
   import flash.events.FocusEvent;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import flash.ui.Keyboard;
   import flash.utils.Proxy;
   import flash.utils.getDefinitionByName;
   import mx.binding.*;
   import mx.charts.AxisRenderer;
   import mx.charts.ChartItem;
   import mx.charts.DateTimeAxis;
   import mx.charts.GridLines;
   import mx.charts.HitData;
   import mx.charts.LinearAxis;
   import mx.charts.LogAxis;
   import mx.charts.PlotChart;
   import mx.charts.effects.SeriesInterpolate;
   import mx.charts.events.ChartItemEvent;
   import mx.charts.series.PlotSeries;
   import mx.collections.ArrayCollection;
   import mx.containers.Canvas;
   import mx.containers.VBox;
   import mx.controls.Alert;
   import mx.controls.Button;
   import mx.controls.CheckBox;
   import mx.controls.ComboBox;
   import mx.controls.DataGrid;
   import mx.controls.DateField;
   import mx.controls.HRule;
   import mx.controls.Image;
   import mx.controls.Label;
   import mx.controls.Text;
   import mx.controls.TextInput;
   import mx.controls.dataGridClasses.DataGridColumn;
   import mx.core.Application;
   import mx.core.FlexGlobals;
   import mx.core.IFlexModuleFactory;
   import mx.core.UIComponentDescriptor;
   import mx.core.mx_internal;
   import mx.effects.Fade;
   import mx.events.CalendarLayoutChangeEvent;
   import mx.events.FlexEvent;
   import mx.events.ListEvent;
   import mx.events.PropertyChangeEvent;
   import mx.graphics.IFill;
   import mx.graphics.IStroke;
   import mx.graphics.SolidColor;
   import mx.graphics.Stroke;
   import mx.managers.BrowserManager;
   import mx.managers.CursorManager;
   import mx.managers.IBrowserManager;
   import mx.managers.PopUpManager;
   import mx.rpc.events.FaultEvent;
   import mx.rpc.events.ResultEvent;
   import mx.rpc.http.mxml.HTTPService;
   import mx.styles.CSSCondition;
   import mx.styles.CSSSelector;
   import mx.styles.CSSStyleDeclaration;
   import mx.utils.ObjectProxy;
   
   use namespace mx_internal;
   
   public class GeekPrices2 extends Application implements IBindingClient
   {
      
      private static var useProxies:Boolean = true;
      
      private static var newFillColor:SolidColor = new SolidColor(16776960,0.9);
      
      private static var likeNewFillColor:SolidColor = new SolidColor(52224,0.9);
      
      private static var veryGoodFillColor:SolidColor = new SolidColor(39321,0.9);
      
      private static var goodFillColor:SolidColor = new SolidColor(16750848,0.9);
      
      private static var acceptableFillColor:SolidColor = new SolidColor(13369395,0.9);
      
      private static var _watcherSetupUtil:IWatcherSetupUtil2;
       
      
      public var _GeekPrices2_Button6:Button;
      
      private var _515338721additionalStatsSrv:HTTPService;
      
      private var _948716068audLabel:Label;
      
      private var _97472bge:Array;
      
      private var _430834994cadLabel:Label;
      
      private var _1367706280canvas:TrendCartesianDataCanvas;
      
      private var _1137317819clickLogSrv:HTTPService;
      
      private var _310779465collectionName:TextInput;
      
      private var _1291690990conditionFilterCB:ComboBox;
      
      private var _476219181dateResetButton:Button;
      
      private var _1791907038dynamicCB:ComboBox;
      
      private var _683492527endDateField:DateField;
      
      private var _1228286983euroLabel:Label;
      
      private var _1282133823fadeIn:Fade;
      
      private var _83644511forSaleTrendButton:Button;
      
      private var _1931972045funagainLabel:Text;
      
      private var _959005968funagainLinkBox:Image;
      
      private var _152006634gameCanvas:VBox;
      
      private var _1769642308gameData:Text;
      
      private var _980620425gameImage:Image;
      
      private var _1125257400gameLinkLabel:Label;
      
      private var _1556290281gameStatsData:Text;
      
      private var _818474753gbpLabel:Label;
      
      private var _98101289hAxis:DateTimeAxis;
      
      private var _562920178hAxisRend:AxisRenderer;
      
      private var _1408005637historyTrendButton:Button;
      
      private var _278607313hotnessDateCB:ComboBox;
      
      private var _1455105398hotnessDatesSrv:HTTPService;
      
      private var _364286229hotnessGameCB:ComboBox;
      
      private var _123433779hotnessSrv:HTTPService;
      
      private var _2030390719includeNonUSD:CheckBox;
      
      private var _1484180665logAxisToggle:CheckBox;
      
      private var _1482851730myChart:PlotChart;
      
      private var _983452919rateSrv:HTTPService;
      
      private var _1173812579rearrangeData:SeriesInterpolate;
      
      private var _3512060rule:HRule;
      
      private var _3614s1:Stroke;
      
      private var _3615s2:Stroke;
      
      private var _944304601salesDataDG:DataGrid;
      
      private var _113633sc1:SolidColor;
      
      private var _113634sc2:SolidColor;
      
      private var _559723774searchInput:TextInput;
      
      private var _1778196271searchSrv:HTTPService;
      
      private var _1864695496series_forsale:PlotSeries;
      
      private var _1911676516series_sold:PlotSeries;
      
      private var _1746875828showGamesForSale:CheckBox;
      
      private var _377332920showGamesSold:CheckBox;
      
      private var _114167srv:HTTPService;
      
      private var _3539227srv2:HTTPService;
      
      private var _113818965srvSales:HTTPService;
      
      private var _626620502startDateField:DateField;
      
      private var _111030583vAxis:LinearAxis;
      
      private var _1028361472vAxisRend:AxisRenderer;
      
      private var _120604420versionLabel:Text;
      
      private var _documentDescriptor_:UIComponentDescriptor;
      
      private var __moduleFactoryInitialized:Boolean = false;
      
      private var _2033906909historyListings:ArrayCollection;
      
      private var _1102807233forSaleListings:ArrayCollection;
      
      private var _388610839testRetailAC:ArrayCollection;
      
      private var _1063424288minDate:Date;
      
      private var _843626290maxDate:Date;
      
      private var myLogAxis:LogAxis;
      
      private var myLinearAxis:LinearAxis;
      
      public var retailPlotSeries:PlotSeries;
      
      private var _1801970088comboData:XMLList;
      
      private var _468983314hotnessData:XMLList;
      
      private var _955052641nameForFunagain:String;
      
      private var _423196548ratesXML:XMLList;
      
      private var _237293203euroRate:Number;
      
      private var _540470726cadRate:Number;
      
      private var _661953616audRate:Number;
      
      private var _164770443gbpRate:Number;
      
      private var _1648974136showGameStatsCanvas:Boolean = false;
      
      public var browserManager:IBrowserManager;
      
      private var handCursor:Class;
      
      public var globalGameInt:int;
      
      public var currentCollectionName:String;
      
      public var currentHotnessDate:String;
      
      private var _512736426usersWanting:String;
      
      private var pastInit:Boolean = false;
      
      private var pastHotnessInit:Boolean = false;
      
      mx_internal var _GeekPrices2_StylesInit_done:Boolean = false;
      
      private var _embed_css__images_scrolltrack_png__288783330_760664061:Class;
      
      private var _embed_css__images_upArrow_png__1063861714_276916543:Class;
      
      private var _embed_css__images_downArrow_png__337795385_1074078652:Class;
      
      mx_internal var _bindings:Array;
      
      mx_internal var _watchers:Array;
      
      mx_internal var _bindingsByDestination:Object;
      
      mx_internal var _bindingsBeginWithWord:Object;
      
      public function GeekPrices2()
      {
         var target:Object = null;
         var watcherSetupUtilClass:Object = null;
         this._documentDescriptor_ = new UIComponentDescriptor({
            "type":Application,
            "events":{"creationComplete":"___GeekPrices2_Application1_creationComplete"},
            "stylesFactory":function():void
            {
               this.backgroundGradientAlphas = [1,1];
               this.backgroundGradientColors = [5591377,5262926];
            },
            "propertiesFactory":function():Object
            {
               return {
                  "height":531,
                  "width":1053,
                  "childDescriptors":[new UIComponentDescriptor({
                     "type":PlotChart,
                     "id":"myChart",
                     "events":{
                        "valueCommit":"__myChart_valueCommit",
                        "itemRollOver":"__myChart_itemRollOver",
                        "itemRollOut":"__myChart_itemRollOut",
                        "itemClick":"__myChart_itemClick"
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "dataTipFunction":dtFunc,
                           "showDataTips":true,
                           "mouseSensitivity":0,
                           "y":88,
                           "x":145,
                           "width":802,
                           "annotationElements":[_GeekPrices2_RangeSelector1_c(),_GeekPrices2_TrendCartesianDataCanvas1_i()],
                           "series":[_GeekPrices2_PlotSeries1_i(),_GeekPrices2_PlotSeries2_i()],
                           "horizontalAxis":_GeekPrices2_DateTimeAxis1_i(),
                           "verticalAxis":_GeekPrices2_LinearAxis1_i(),
                           "horizontalAxisRenderers":[_GeekPrices2_AxisRenderer1_i()],
                           "verticalAxisRenderers":[_GeekPrices2_AxisRenderer2_i()]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DataGrid,
                     "id":"salesDataDG",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":false,
                           "columns":[_GeekPrices2_DataGridColumn1_c(),_GeekPrices2_DataGridColumn2_c(),_GeekPrices2_DataGridColumn3_c()]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ComboBox,
                     "id":"dynamicCB",
                     "events":{"change":"__dynamicCB_change"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":297,
                           "y":66,
                           "width":410,
                           "selectedIndex":-1,
                           "rowCount":10,
                           "labelFunction":generateCBList,
                           "toolTip":"Select a game from the list to view that game\'s stats. This is a list of games from the specified collection."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ComboBox,
                     "id":"hotnessGameCB",
                     "events":{"change":"__hotnessGameCB_change"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":296,
                           "y":37,
                           "width":410,
                           "labelField":"game_name",
                           "labelFunction":generateHotnessLabels,
                           "rowCount":10,
                           "selectedIndex":-1,
                           "toolTip":"Select a game from the list to view that game\'s stats. This is a list of games on the BGG \'Hotness\' list on the specified date."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CheckBox,
                     "id":"showGamesSold",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "label":"Historical sales data",
                           "x":185,
                           "y":496,
                           "selected":true,
                           "toolTip":"Toggles historical sales data in the Geek marketplace back to 2001."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CheckBox,
                     "id":"showGamesForSale",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "label":"BGG For sale",
                           "x":330,
                           "y":496,
                           "selected":false,
                           "toolTip":"Toggles current games for sale on the Geek. The chart shows when the game was listed."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"collectionName",
                     "events":{"keyUp":"__collectionName_keyUp"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":854,
                           "y":67,
                           "width":140,
                           "tabIndex":2,
                           "toolTip":"Enter a collection name (such as \'spielboy\' or \'mkgray\') and press ENTER. Then select a game from the drop down list from that collection."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"Change Collection ID:",
                           "x":726,
                           "y":69,
                           "width":129
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "text":"Change Hotness date:",
                           "x":726,
                           "y":40,
                           "width":129,
                           "truncateToFit":false
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "id":"gameCanvas",
                     "stylesFactory":function():void
                     {
                        this.verticalScrollBarStyleName = "myVScrollBar";
                        this.paddingTop = 3;
                        this.paddingLeft = 3;
                        this.borderStyle = "solid";
                        this.verticalAlign = "top";
                        this.horizontalAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":10,
                           "width":137,
                           "height":391,
                           "visible":true,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"auto",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Text,
                              "id":"gameStatsData",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":131,
                                    "toolTip":"\'Users wanting\' is number of BGG users who have added this game to their want list.\r\'Users selling\' is the number of copies of this game that are sale in the BGG marketplace (including non-US copies).\r\'Users trading\' is the number of BGG users who have this game available for trade.\r\'Users owning\' is the number of BGG users who have this game as part of their collection.\r\'Users wishing\' is the number of BGG users who have this game on their wish list."
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Image,
                              "id":"gameImage",
                              "events":{"click":"__gameImage_click"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":130,
                                    "buttonMode":true,
                                    "toolTip":"View this game on Boardgamegeek.com"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Text,
                              "id":"gameData",
                              "events":{
                                 "mouseOver":"__gameData_mouseOver",
                                 "mouseOut":"__gameData_mouseOut",
                                 "click":"__gameData_click"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":131,
                                    "buttonMode":true,
                                    "mouseChildren":false,
                                    "useHandCursor":true,
                                    "toolTip":"View this game on Boardgamegeek.com"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":HRule,
                              "id":"rule",
                              "stylesFactory":function():void
                              {
                                 this.strokeWidth = 1;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"visible":false};
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":TextInput,
                     "id":"searchInput",
                     "events":{"keyUp":"__searchInput_keyUp"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":297,
                           "y":6,
                           "width":225,
                           "tabIndex":0,
                           "toolTip":"Enter part or all of a game name and press ENTER to search for that game."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":165,
                           "y":69,
                           "text":"Select from collection:"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":161,
                           "y":8,
                           "text":"Search for game name:"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":161,
                           "y":40,
                           "text":"Select from Hotness:"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "stylesFactory":function():void
                     {
                        this.color = 9868693;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "selectable":false,
                           "x":617,
                           "y":8,
                           "width":93,
                           "text":"Link to This:",
                           "enabled":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "id":"gameLinkLabel",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "selectable":true,
                           "x":690,
                           "y":8,
                           "width":334,
                           "enabled":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":ComboBox,
                     "id":"hotnessDateCB",
                     "events":{"change":"__hotnessDateCB_change"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":854,
                           "y":38,
                           "selectedIndex":1,
                           "toolTip":"Select a date to get the Hotness list for.",
                           "labelField":"date"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DateField,
                     "id":"startDateField",
                     "events":{
                        "change":"__startDateField_change",
                        "focusIn":"__startDateField_focusIn"
                     },
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":509,
                           "y":493,
                           "formatString":"MM/DD/YY",
                           "text":"MIN",
                           "editable":true,
                           "width":99,
                           "toolTip":"Select or enter a date to set the lower bounds of the chart\'s date range."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":DateField,
                     "id":"endDateField",
                     "events":{
                        "change":"__endDateField_change",
                        "focusIn":"__endDateField_focusIn"
                     },
                     "stylesFactory":function():void
                     {
                        this.textAlign = "right";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":631,
                           "y":493,
                           "formatString":"MM/DD/YY",
                           "text":"MAX",
                           "editable":true,
                           "width":99,
                           "toolTip":"Select or enter a date to set the upper bounds of the chart\'s date range."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"dateResetButton",
                     "events":{"click":"__dateResetButton_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":743,
                           "y":493,
                           "label":"Reset",
                           "toolTip":"Reset dates to MIN/MAX."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "solid";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":170,
                           "y":484,
                           "width":309,
                           "height":42,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "solid";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":496,
                           "y":484,
                           "width":318,
                           "height":42,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":Label,
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":116,
                                    "y":12,
                                    "text":"to"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":CheckBox,
                     "id":"logAxisToggle",
                     "events":{"change":"__logAxisToggle_change"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":842,
                           "y":494,
                           "label":"Log Axis",
                           "selected":false,
                           "toolTip":"Toggle the horizontal axis between logarithmic and linear.",
                           "width":100
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "solid";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":830,
                           "y":484,
                           "width":91,
                           "height":42,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalAlign = "center";
                        this.borderStyle = "solid";
                        this.verticalAlign = "middle";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":941,
                           "y":120,
                           "height":170,
                           "width":102,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "childDescriptors":[new UIComponentDescriptor({"type":ConditionLegend}),new UIComponentDescriptor({
                              "type":HRule,
                              "stylesFactory":function():void
                              {
                                 this.strokeWidth = 1;
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {"width":80};
                              }
                           }),new UIComponentDescriptor({
                              "type":ComboBox,
                              "id":"conditionFilterCB",
                              "events":{"change":"__conditionFilterCB_change"},
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "width":96,
                                    "toolTip":"Filter out games except those that match the selected condition. Choose \'All\' to show all games regardless of condition.",
                                    "selectedIndex":0,
                                    "dataProvider":_GeekPrices2_ArrayCollection1_c()
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Image,
                     "id":"funagainLinkBox",
                     "events":{"click":"__funagainLinkBox_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":false,
                           "source":"http://www.funagain.com/images/affiliate/dice-medium.png",
                           "height":27,
                           "width":27,
                           "x":942,
                           "y":492,
                           "toolTip":"Look for this game on Funagain!",
                           "buttonMode":true
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"funagainLabel",
                     "events":{"click":"__funagainLabel_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 8;
                        this.textAlign = "center";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "visible":false,
                           "x":966,
                           "y":492,
                           "width":83,
                           "height":30,
                           "buttonMode":true,
                           "mouseChildren":false,
                           "useHandCursor":true,
                           "text":"Look for this game on Funagain"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Canvas,
                     "stylesFactory":function():void
                     {
                        this.borderStyle = "solid";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":10,
                           "y":409,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "width":137,
                           "height":117,
                           "childDescriptors":[new UIComponentDescriptor({
                              "type":CheckBox,
                              "id":"includeNonUSD",
                              "events":{
                                 "click":"__includeNonUSD_click",
                                 "focusOut":"__includeNonUSD_focusOut",
                                 "focusIn":"__includeNonUSD_focusIn"
                              },
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "label":"Non-US data",
                                    "toolTip":"Include transactions in non-US currencies (such as Pounds or Euros). Conversion rates are below.",
                                    "y":3,
                                    "x":8
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"euroLabel",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":6,
                                    "y":26,
                                    "styleName":"xRateStyle"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"gbpLabel",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":6,
                                    "y":48,
                                    "styleName":"xRateStyle"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"audLabel",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":6,
                                    "y":70,
                                    "styleName":"xRateStyle"
                                 };
                              }
                           }),new UIComponentDescriptor({
                              "type":Label,
                              "id":"cadLabel",
                              "propertiesFactory":function():Object
                              {
                                 return {
                                    "x":6,
                                    "y":92,
                                    "styleName":"xRateStyle"
                                 };
                              }
                           })]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":1007,
                           "y":6,
                           "htmlText":"©2015",
                           "width":50
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Text,
                     "id":"versionLabel",
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":1007,
                           "y":16,
                           "width":50
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___GeekPrices2_Button2_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":530,
                           "y":6,
                           "label":"Go",
                           "tabIndex":1
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "events":{"click":"___GeekPrices2_Button3_click"},
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":1002,
                           "y":67,
                           "label":"Go",
                           "tabIndex":3
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":VBox,
                     "stylesFactory":function():void
                     {
                        this.horizontalAlign = "left";
                        this.borderStyle = "solid";
                        this.verticalGap = 6;
                        this.verticalAlign = "middle";
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "height":92,
                           "width":102,
                           "horizontalScrollPolicy":"off",
                           "verticalScrollPolicy":"off",
                           "x":941,
                           "y":298,
                           "childDescriptors":[new UIComponentDescriptor({"type":TypeLegend})]
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"historyTrendButton",
                     "events":{"click":"__historyTrendButton_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 9;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "toolTip":"Display trend line for historical sales data",
                           "x":941,
                           "y":399,
                           "label":"History Trend",
                           "width":102
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"forSaleTrendButton",
                     "events":{"click":"__forSaleTrendButton_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 9;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":941,
                           "y":429,
                           "width":102,
                           "toolTip":"Display trend line for current items for sale",
                           "label":"For Sale Trend"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Button,
                     "id":"_GeekPrices2_Button6",
                     "events":{"click":"___GeekPrices2_Button6_click"},
                     "stylesFactory":function():void
                     {
                        this.fontSize = 9;
                     },
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":941,
                           "y":459,
                           "width":102,
                           "label":"Export As CSV",
                           "toolTip":"Exports pricing history data only (not current for sale data) as a comma-separated file."
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":208,
                           "y":25,
                           "text":"OR"
                        };
                     }
                  }),new UIComponentDescriptor({
                     "type":Label,
                     "propertiesFactory":function():Object
                     {
                        return {
                           "x":208,
                           "y":55,
                           "text":"OR"
                        };
                     }
                  })]
               };
            }
         });
         this.myLogAxis = new LogAxis();
         this.myLinearAxis = new LinearAxis();
         this.handCursor = GeekPrices2_handCursor;
         this._embed_css__images_scrolltrack_png__288783330_760664061 = _class_embed_css__images_scrolltrack_png__288783330_760664061;
         this._embed_css__images_upArrow_png__1063861714_276916543 = _class_embed_css__images_upArrow_png__1063861714_276916543;
         this._embed_css__images_downArrow_png__337795385_1074078652 = _class_embed_css__images_downArrow_png__337795385_1074078652;
         this._bindings = [];
         this._watchers = [];
         this._bindingsByDestination = {};
         this._bindingsBeginWithWord = {};
         super();
         mx_internal::_document = this;
         var bindings:Array = this._GeekPrices2_bindingsSetup();
         var watchers:Array = [];
         target = this;
         if(_watcherSetupUtil == null)
         {
            watcherSetupUtilClass = getDefinitionByName("_GeekPrices2WatcherSetupUtil");
            watcherSetupUtilClass["init"](null);
         }
         _watcherSetupUtil.setup(this,function(param1:String):*
         {
            return target[param1];
         },function(param1:String):*
         {
            return GeekPrices2[param1];
         },bindings,watchers);
         mx_internal::_bindings = mx_internal::_bindings.concat(bindings);
         mx_internal::_watchers = mx_internal::_watchers.concat(watchers);
         this.layout = "absolute";
         this.height = 531;
         this.width = 1053;
         this.horizontalScrollPolicy = "off";
         this.verticalScrollPolicy = "off";
         this._GeekPrices2_HTTPService2_i();
         this._GeekPrices2_Array3_i();
         this._GeekPrices2_HTTPService9_i();
         this._GeekPrices2_Fade1_i();
         this._GeekPrices2_HTTPService8_i();
         this._GeekPrices2_HTTPService5_i();
         this._GeekPrices2_HTTPService7_i();
         this._GeekPrices2_SeriesInterpolate1_i();
         this._GeekPrices2_Stroke3_i();
         this._GeekPrices2_Stroke4_i();
         this._GeekPrices2_SolidColor1_i();
         this._GeekPrices2_SolidColor2_i();
         this._GeekPrices2_HTTPService6_i();
         this._GeekPrices2_HTTPService1_i();
         this._GeekPrices2_HTTPService4_i();
         this._GeekPrices2_HTTPService3_i();
         this.addEventListener("creationComplete",this.___GeekPrices2_Application1_creationComplete);
         var i:uint = 0;
         while(i < bindings.length)
         {
            Binding(bindings[i]).execute();
            i++;
         }
      }
      
      public static function set watcherSetupUtil(param1:IWatcherSetupUtil2) : void
      {
         GeekPrices2._watcherSetupUtil = param1;
      }
      
      override public function set moduleFactory(param1:IFlexModuleFactory) : void
      {
         var factory:IFlexModuleFactory = param1;
         super.moduleFactory = factory;
         if(this.__moduleFactoryInitialized)
         {
            return;
         }
         this.__moduleFactoryInitialized = true;
         if(!this.styleDeclaration)
         {
            this.styleDeclaration = new CSSStyleDeclaration(null,styleManager);
         }
         this.styleDeclaration.defaultFactory = function():void
         {
            this.backgroundGradientAlphas = [1,1];
            this.backgroundGradientColors = [5591377,5262926];
         };
         mx_internal::_GeekPrices2_StylesInit();
      }
      
      override public function initialize() : void
      {
         mx_internal::setDocumentDescriptor(this._documentDescriptor_);
         super.initialize();
      }
      
      private function testRetailSrvInvalidHandler(param1:FaultEvent) : void
      {
         Alert.show(param1.fault.toString());
      }
      
      private function rateSrvInvalidHandler() : void
      {
         Alert.show("Note: The exchange rates could not be loaded. Non-USD transactions will display incorrectly.","Achtung!");
      }
      
      private function collectionInvalidHandler() : void
      {
         Alert.show("The collection name does not exist or there was a connection error.","Achtung!");
      }
      
      private function salesInvalidHandler() : void
      {
         Alert.show("There are none of these games for sale or there was a connection error.","Achtung!");
      }
      
      private function searchInvalidHandler() : void
      {
         Alert.show("No games matched your search or there was a connection error.","Achtung!");
      }
      
      private function gameInvalidHandler() : void
      {
         Alert.show("The gameID does not exist or there was a connection error.","Achtung!");
      }
      
      private function initApp() : void
      {
         this.browserManager = BrowserManager.getInstance();
         var _loc1_:Date = new Date();
         this.currentHotnessDate = _loc1_.fullYear + "-" + (_loc1_.month + 1) + "-" + _loc1_.date;
         this.hotnessGameCB.prompt = "Select a game from the \'" + this.currentHotnessDate + "\' Hotness list...";
         if(useProxies)
         {
            this.rateSrv.url = "/getXRates.php";
            this.hotnessDatesSrv.url = "/getHotnessUniqueDates.php";
            this.hotnessSrv.url = "/getHotnessLocalByDate.php?date=" + this.currentHotnessDate;
         }
         else
         {
            this.rateSrv.url = "http://query.yahooapis.com/v1/public/yql?q=select%20*%20from%20yahoo.finance.xchange%20where%20pair%20in%20(%22USDEUR%22,%20%22USDGBP%22,%20%22USDAUD%22,%20%22USDCAD%22)&env=store://datatables.org/alltableswithkeys";
            this.hotnessDatesSrv.url = "http://www.spielboy.com/getHotnessUniqueDates.php";
            this.hotnessSrv.url = "http://www.spielboy.com/getHotnessLocalByDate.php?date=" + this.currentHotnessDate;
         }
         this.rateSrv.send();
         this.hotnessDatesSrv.send();
         this.hotnessSrv.send();
         var _loc2_:String = "knizia_collection";
         var _loc3_:String = Application.application.parameters.collection;
         var _loc4_:int = Application.application.parameters.gameID;
         if(_loc3_)
         {
            _loc2_ = _loc3_;
         }
         this.dynamicCB.prompt = "Select a game from the \'" + _loc2_ + "\' collection...";
         if(_loc4_)
         {
            this.gameServSend(_loc4_);
         }
         this.srv2.url = "getGeekCollection.php?collectionID=" + _loc2_;
         if(!useProxies)
         {
            this.srv2.url = "http://www.boardgamegeek.com/xmlapi/collection/" + _loc2_;
         }
         this.currentCollectionName = _loc2_;
         this.srv2.send();
         this.browserManager.init("","Welcome to Spielboy.com!");
         this.myLogAxis.labelFunction = this.verticalAxisRendererFunctionLog;
         this.myLinearAxis.labelFunction = this.verticalAxisRendererFunction;
      }
      
      private function rateResultHandler(param1:ResultEvent) : void
      {
         var usd:String = null;
         var euro:String = null;
         var cad:String = null;
         var gbp:String = null;
         var aud:String = null;
         var e:ResultEvent = param1;
         this.ratesXML = e.result.results.rate as XMLList;
         usd = "1";
         euro = this.ratesXML.(@id == "USDEUR").Rate;
         cad = this.ratesXML.(@id == "USDCAD").Rate;
         gbp = this.ratesXML.(@id == "USDGBP").Rate;
         aud = this.ratesXML.(@id == "USDAUD").Rate;
         this.euroRate = int(Number(usd) / Number(euro) * 10000) / 10000;
         this.gbpRate = int(Number(usd) / Number(gbp) * 10000) / 10000;
         this.cadRate = int(Number(usd) / Number(cad) * 10000) / 10000;
         this.audRate = int(Number(usd) / Number(aud) * 10000) / 10000;
         this.euroLabel.htmlText = "&#8364;/$: " + this.euroRate;
         this.gbpLabel.htmlText = "&#163;/$: " + this.gbpRate;
         this.cadLabel.htmlText = "CAD/$: " + this.cadRate;
         this.audLabel.htmlText = "AUD/$: " + this.audRate;
      }
      
      private function myFillFunction(param1:ChartItem, param2:Number) : IFill
      {
         var _loc3_:String = String(param1.item.condition);
         switch(_loc3_)
         {
            case "new":
               return newFillColor;
            case "likenew":
               return likeNewFillColor;
            case "verygood":
               return veryGoodFillColor;
            case "good":
               return goodFillColor;
            case "acceptable":
               return acceptableFillColor;
            default:
               return newFillColor;
         }
      }
      
      private function gameSelectionHandler(param1:Event) : void
      {
         var _loc2_:int = param1.currentTarget.selectedItem.@objectid;
         this.logAClick("CollectionClick",_loc2_,this.currentCollectionName);
         this.gameServSend(_loc2_);
      }
      
      private function hotnessSelectionHandler(param1:Event) : void
      {
         var _loc2_:int = param1.currentTarget.selectedItem.gameID;
         this.logAClick("HotnessClick",_loc2_,this.currentHotnessDate);
         this.gameServSend(_loc2_);
      }
      
      public function gameServSend(param1:int) : void
      {
         if(useProxies)
         {
            this.srv.url = "getGeekPriceHistory.php?gameID=" + param1;
            this.srvSales.url = "getGeekForSale.php?gameID=" + param1;
         }
         else
         {
            this.srv.url = "http://www.boardgamegeek.com/xmlapi/boardgame/" + param1 + "?pricehistory=1";
            this.srvSales.url = "http://www.boardgamegeek.com/xmlapi/boardgame/" + param1 + "?marketplace=1";
         }
         this.srv.send();
         this.srvSales.send();
         this.gameLinkLabel.text = "http://spielboy.com/GeekPrices.php?gameID=" + param1;
         var _loc2_:int = 2;
         while(_loc2_ < this.myChart.series.length)
         {
            this.myChart.series.pop();
            _loc2_++;
         }
      }
      
      private function serviceResultHandler2() : void
      {
         var _loc1_:int = this.additionalStatsSrv.lastResult.items.item.statistics.ratings.wanting.value;
         var _loc2_:int = this.additionalStatsSrv.lastResult.items.item.statistics.ratings.trading.value;
         var _loc3_:int = this.additionalStatsSrv.lastResult.items.item.statistics.ratings.wishing.value;
         var _loc4_:int = this.additionalStatsSrv.lastResult.items.item.statistics.ratings.owned.value;
         var _loc5_:int = this.forSaleListings.source.length;
         this.usersWanting = "<i>Users wanting:</i> " + _loc1_ + "<br/>" + "<i>Users trading:</i> " + _loc2_ + "<br/>" + "<i>Users wishing: </i>" + _loc3_ + "<br/>" + "<i>Users owning: </i>" + _loc4_ + "<br/>" + "<i>Users selling: </i>" + _loc5_ + "<br/>";
      }
      
      private function serviceResultHandler() : void
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         var _loc3_:String = null;
         var _loc6_:Object = null;
         var _loc7_:* = null;
         this.historyListings = new ArrayCollection();
         try
         {
            if(this.srv.lastResult.boardgames.boardgame.marketplacehistory.listing is ObjectProxy)
            {
               this.historyListings = new ArrayCollection([this.srv.lastResult.boardgames.boardgame.marketplacehistory.listing]);
            }
            else
            {
               this.historyListings = this.srv.lastResult.boardgames.boardgame.marketplacehistory.listing as ArrayCollection;
            }
            this.historyListings = this.convertCurrency(this.historyListings);
            if(this.conditionFilterCB.selectedIndex != 0)
            {
               this.historyListings.filterFunction = this.filterOutNonNew;
            }
            else
            {
               this.historyListings.filterFunction = this.currencyFilter;
            }
            this.historyListings.refresh();
         }
         catch(e:Error)
         {
         }
         if(this.historyListings.length == 0)
         {
            Alert.show("Your current settings show no historical data.\n\nTo expand your search, try checking the \'Non-US data\' box if it is not already checked.","Achtung!");
         }
         this.gameImage.source = this.srv.lastResult.boardgames.boardgame.thumbnail;
         this.globalGameInt = this.srv.lastResult.boardgames.boardgame.objectid;
         this.additionalStatsSrv.url = "http://www.spielboy.com/getBasicGameInfo.php?gameID=" + this.globalGameInt;
         this.additionalStatsSrv.send();
         this.gameImage.height = this.gameImage.contentHeight;
         var _loc4_:* = "Names:\n";
         var _loc5_:Boolean = false;
         try
         {
            _loc5_ = this.srv.lastResult.boardgames.boardgame.name.primary;
         }
         catch(e:Error)
         {
         }
         if(_loc5_)
         {
            _loc4_ = "\"" + this.srv.lastResult.boardgames.boardgame.name + "\"";
            this.nameForFunagain = this.srv.lastResult.boardgames.boardgame.name;
         }
         else
         {
            _loc6_ = this.srv.lastResult.boardgames.boardgame.name;
            this.nameForFunagain = _loc6_[0];
            for(_loc7_ in _loc6_)
            {
               _loc4_ = _loc4_ + (" \"" + _loc6_[_loc7_] + "\"\n");
            }
         }
         _loc2_ = this.srv.lastResult.boardgames.boardgame.boardgamedesigner;
         _loc3_ = this.srv.lastResult.boardgames.boardgame.yearpublished;
         this.gameData.htmlText = "<I>By " + _loc2_ + "</I> (" + _loc3_ + ")<br/><B>" + _loc4_ + "</B>";
         this.funagainLinkBox.visible = true;
         this.funagainLabel.visible = true;
         if(!this.gameCanvas.visible)
         {
            this.gameCanvas.visible = true;
            this.rule.visible = true;
         }
      }
      
      private function convertCurrency(param1:ArrayCollection) : ArrayCollection
      {
         var _loc3_:Number = NaN;
         var _loc2_:int = 0;
         while(_loc2_ < param1.length)
         {
            if(param1.getItemAt(_loc2_).price.currency != "USD")
            {
               switch(param1.getItemAt(_loc2_).price.currency)
               {
                  case "EUR":
                     _loc3_ = this.euroRate;
                     break;
                  case "GBP":
                     _loc3_ = this.gbpRate;
                     break;
                  case "AUD":
                     _loc3_ = this.audRate;
                     break;
                  case "CAD":
                     _loc3_ = this.cadRate;
               }
               param1.getItemAt(_loc2_).price.value = int(param1.getItemAt(_loc2_).price.value * _loc3_ * 100) / 100;
            }
            _loc2_++;
         }
         return param1;
      }
      
      private function salesResultHandler() : void
      {
         this.forSaleListings = new ArrayCollection();
         try
         {
            if(this.srvSales.lastResult.boardgames.boardgame.marketplacelistings.listing is ObjectProxy)
            {
               this.forSaleListings = new ArrayCollection([this.srvSales.lastResult.boardgames.boardgame.marketplacelistings.listing]);
            }
            else
            {
               this.forSaleListings = this.srvSales.lastResult.boardgames.boardgame.marketplacelistings.listing as ArrayCollection;
            }
            this.forSaleListings = this.convertCurrency(this.forSaleListings);
            if(this.conditionFilterCB.selectedIndex != 0)
            {
               this.forSaleListings.filterFunction = this.filterOutNonNew;
            }
            else
            {
               this.forSaleListings.filterFunction = this.currencyFilter;
            }
            this.forSaleListings.refresh();
            return;
         }
         catch(e:Error)
         {
            return;
         }
      }
      
      public function currencyFilter(param1:Object) : Boolean
      {
         if(param1.price.currency == "USD" || this.includeNonUSD.selected)
         {
            return true;
         }
         return false;
      }
      
      public function filterOutNonNew(param1:Object) : Boolean
      {
         if((param1.price.currency == "USD" || this.includeNonUSD.selected) && param1.condition == this.conditionFilterCB.selectedItem.value)
         {
            return true;
         }
         return false;
      }
      
      public function filterOutNonPrimary(param1:Object) : Boolean
      {
         if(param1.name.primary == "true")
         {
            return true;
         }
         return false;
      }
      
      private function resetDates() : void
      {
         this.clearTrendLine();
         this.minDate = null;
         this.maxDate = null;
         this.startDateField.text = "MIN";
         this.endDateField.text = "MAX";
         var _loc1_:int = 0;
         while(_loc1_ < this.myChart.series.length)
         {
            this.myChart.series[_loc1_].setStyle("radius",5);
            _loc1_++;
         }
      }
      
      private function dtFunc(param1:HitData) : String
      {
         var _loc3_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc2_:String = "BGG";
         try
         {
            if(param1.item.source)
            {
               _loc2_ = param1.item.source;
            }
         }
         catch(e:Error)
         {
         }
         var _loc4_:String = "";
         if(param1.item.price.currency != "USD")
         {
            _loc4_ = "originally in ";
         }
         if(_loc2_ == "BGG")
         {
            _loc5_ = param1.item.saledate;
            if(_loc5_)
            {
               _loc6_ = "<B>SOLD!</B><BR/>";
               _loc5_ = _loc5_.substr(0,16);
            }
            else
            {
               _loc6_ = "<B>FOR SALE!</B><BR/>";
               _loc5_ = "N/A";
            }
            _loc3_ = _loc6_;
            _loc3_ = _loc3_ + ("Price: <B>$" + param1.item.price + "</B> (" + _loc4_ + param1.item.price.currency + ")<BR/>");
            _loc3_ = _loc3_ + ("Condition: <B>" + param1.item.condition + "</B><BR/>");
            _loc3_ = _loc3_ + ("Sale Date: <B>" + _loc5_ + "</B><BR/>");
            _loc3_ = _loc3_ + ("Notes: <I>" + param1.item.notes + "</I>");
         }
         else if(_loc2_ == "TH")
         {
         }
         return _loc3_;
      }
      
      private function collectionInputHandler(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            this.dynamicCB.prompt = "Select one from the \'" + this.collectionName.text + "\' collection...";
            if(useProxies)
            {
               this.srv2.url = "getGeekCollection.php?collectionID=" + this.collectionName.text;
            }
            else
            {
               this.srv2.url = "http://www.boardgamegeek.com/xmlapi/collection/" + this.collectionName.text;
            }
            this.logAClick("GetCollection",0,this.collectionName.text);
            this.currentCollectionName = this.collectionName.text;
            this.srv2.send();
         }
      }
      
      private function changeHotnessDate(param1:Event) : void
      {
         this.currentHotnessDate = param1.currentTarget.selectedItem;
         this.hotnessGameCB.prompt = "Select a game from the \'" + this.currentHotnessDate + "\' Hotness list...";
         if(useProxies)
         {
            this.hotnessSrv.url = "getHotnessLocalByDate.php?date=" + this.currentHotnessDate;
         }
         else
         {
            this.hotnessSrv.url = "http://www.spielboy.com/getHotnessLocalByDate.php?date=" + this.currentHotnessDate;
         }
         this.hotnessSrv.send();
      }
      
      private function collectionButtonHandler() : void
      {
         this.dynamicCB.prompt = "Select a game from the \'" + this.collectionName.text + "\' collection...";
         if(useProxies)
         {
            this.srv2.url = "getGeekCollection.php?collectionID=" + this.collectionName.text;
         }
         else
         {
            this.srv2.url = "http://www.boardgamegeek.com/xmlapi/collection/" + this.collectionName.text;
         }
         this.logAClick("GetCollection",0,this.collectionName.text);
         this.currentCollectionName = this.collectionName.text;
         this.srv2.send();
      }
      
      private function searchInputHandler(param1:KeyboardEvent) : void
      {
         if(param1.keyCode == Keyboard.ENTER)
         {
            if(useProxies)
            {
               this.searchSrv.url = "getGeekSearch.php?searchString=" + escape(this.searchInput.text);
            }
            else
            {
               this.searchSrv.url = "http://www.boardgamegeek.com/xmlapi/search?search=" + this.searchInput.text;
            }
            this.logAClick("Search",null,this.searchInput.text);
            this.searchSrv.send();
         }
      }
      
      private function searchButtonHandler() : void
      {
         this.resetDates();
         if(useProxies)
         {
            this.searchSrv.url = "getGeekSearch.php?searchString=" + escape(this.searchInput.text);
         }
         else
         {
            this.searchSrv.url = "http://www.boardgamegeek.com/xmlapi/search?search=" + this.searchInput.text;
         }
         this.logAClick("Search",null,this.searchInput.text);
         this.searchSrv.send();
      }
      
      private function displaySearchPopup(param1:ResultEvent) : void
      {
         var b:Boolean = false;
         var id:int = 0;
         var searchPopup:SearchDialog = null;
         var e:ResultEvent = param1;
         try
         {
            b = this.searchSrv.lastResult.boardgames.boardgame;
         }
         catch(e:Error)
         {
         }
         if(!b)
         {
            Alert.show("No games matched your search or there was a connection error.","Achtung!");
         }
         else
         {
            try
            {
               if(this.searchSrv.lastResult.boardgames.boardgame is ObjectProxy)
               {
                  id = this.searchSrv.lastResult.boardgames.boardgame.objectid;
                  this.gameServSend(id);
               }
               else
               {
                  searchPopup = PopUpManager.createPopUp(this,SearchDialog,true) as SearchDialog;
                  searchPopup.searchResult = this.searchSrv.lastResult.boardgames.boardgame as ArrayCollection;
                  PopUpManager.centerPopUp(searchPopup);
               }
               return;
            }
            catch(e:Error)
            {
               Alert.show("No games matched your search or there was a connection error.","Achtung!");
               return;
            }
         }
      }
      
      private function populateComboBox(param1:ResultEvent) : void
      {
         this.comboData = param1.result.item as XMLList;
         if(this.pastInit)
         {
            this.dynamicCB.open();
         }
         this.pastInit = true;
      }
      
      private function populateHotnessComboBox(param1:ResultEvent) : void
      {
         this.hotnessData = param1.result.hotness as XMLList;
         if(this.pastHotnessInit)
         {
            this.hotnessGameCB.open();
         }
         this.pastHotnessInit = true;
      }
      
      private function itemClickHandler(param1:ChartItemEvent) : void
      {
         var _loc2_:String = null;
         try
         {
            if(param1.hitData.item.link.href != null)
            {
               _loc2_ = param1.hitData.item.link.href;
               _loc2_ = _loc2_.substr(_loc2_.indexOf("itemid="),_loc2_.length);
               this.logAClick("ChartClick",this.globalGameInt,param1.hitData.item.link.href);
               navigateToURL(new URLRequest(param1.hitData.item.link.href),"_blank");
               return;
            }
         }
         catch(error:Error)
         {
         }
         try
         {
            if(param1.hitData.item.link != null)
            {
               this.logAClick("ChartClick",this.globalGameInt,param1.hitData.item.link);
               navigateToURL(new URLRequest(param1.hitData.item.link),"_blank");
               return;
            }
            return;
         }
         catch(error:Error)
         {
            return;
         }
      }
      
      private function handleItemRollOver(param1:ChartItemEvent) : void
      {
         if(!param1.hitData.item.saledate)
         {
            CursorManager.setCursor(this.handCursor,2,-7);
         }
      }
      
      private function handleItemRollOut() : void
      {
         CursorManager.removeAllCursors();
      }
      
      private function navToBGG() : void
      {
         var _loc1_:String = "http://www.boardgamegeek.com/boardgame/" + this.globalGameInt;
         this.logAClick("BGGGutterClick",this.globalGameInt,_loc1_);
         navigateToURL(new URLRequest(_loc1_),"_blank");
      }
      
      private function toggleAxis() : void
      {
         this.clearTrendLine();
         if(this.logAxisToggle.selected)
         {
            this.myChart.verticalAxis = this.myLogAxis;
            this.vAxisRend.axis = this.myLogAxis;
         }
         else
         {
            this.myChart.verticalAxis = this.myLinearAxis;
            this.vAxisRend.axis = this.myLinearAxis;
         }
      }
      
      private function toggleFilters() : void
      {
         this.clearTrendLine();
         if(this.conditionFilterCB.selectedIndex != 0)
         {
            this.historyListings.filterFunction = this.filterOutNonNew;
            this.forSaleListings.filterFunction = this.filterOutNonNew;
         }
         else
         {
            this.historyListings.filterFunction = this.currencyFilter;
            this.forSaleListings.filterFunction = this.currencyFilter;
         }
         this.historyListings.refresh();
         this.forSaleListings.refresh();
      }
      
      private function enableEffects(param1:Boolean) : void
      {
         if(param1)
         {
            this.series_sold.setStyle("showDataEffect",this.rearrangeData);
            this.series_forsale.setStyle("showDataEffect",this.rearrangeData);
         }
         else
         {
            this.series_sold.setStyle("showDataEffect",null);
            this.series_forsale.setStyle("showDataEffect",null);
         }
      }
      
      private function generateCBList(param1:Object) : String
      {
         var _loc2_:Array = [];
         if(param1.status.@want == "1" || param1.status.@wantbuy == "1")
         {
            _loc2_.push("want trade/buy");
         }
         if(param1.status.@wishlist == "1")
         {
            _loc2_.push("wishlist(" + param1.status.@wishlistpriority + ")");
         }
         if(param1.status.@own == "1")
         {
            _loc2_.push("own");
         }
         if(param1.status.@prevowned == "1")
         {
            _loc2_.push("prevowned");
         }
         if(param1.status.@preordered == "1")
         {
            _loc2_.push("preordered");
         }
         if(_loc2_.length == 0)
         {
            _loc2_[0] = "No status";
         }
         return param1.name + " (" + param1.yearpublished + ") - " + _loc2_.toString();
      }
      
      private function generateHotnessLabels(param1:Object) : String
      {
         return param1.rank + ": " + param1.game_name;
      }
      
      private function buildFunagainLink() : void
      {
         var _loc1_:* = "http://www.funagain.com/control/catalogsearch?search_query=" + this.nameForFunagain + "&search_operator=AND&sort_order=SortProductField%3AtotalQuantityOrdered%3BN&show_unavailable=Y&affil=SBOY";
         this.logAClick("FunagainBuyButton",this.globalGameInt,_loc1_);
         navigateToURL(new URLRequest(_loc1_),"_blank");
      }
      
      private function verticalAxisRendererFunction(param1:Object, param2:Object, param3:LinearAxis) : String
      {
         return "$" + param1;
      }
      
      private function verticalAxisRendererFunctionLog(param1:Object, param2:Object, param3:LogAxis) : String
      {
         return "$" + param1;
      }
      
      private function logAClick(param1:String, param2:int, param3:String) : void
      {
         if(useProxies)
         {
            this.clickLogSrv.url = "clickLog.php?click_type=" + param1 + "&gameID=" + param2 + "&link=" + escape(param3);
         }
         else
         {
            this.clickLogSrv.url = "http://spielboy.com/clickLog.php?click_type=" + param1 + "&gameID=" + param2 + "&link=" + escape(param3);
         }
         this.clickLogSrv.send();
      }
      
      private function addTrendLine(param1:PlotSeries) : void
      {
         this.canvas.toolTip = param1.displayName + " linear trend line";
         this.canvas.drawRegressionLine(param1);
      }
      
      protected function clearTrendLine() : void
      {
         this.canvas.clear();
      }
      
      private function exportDataAsCSV() : void
      {
         this.logAClick("ExportCSVClick",this.globalGameInt,"");
         var _loc1_:Array = this.historyListings.toArray();
         FlexToCSV.exportAC(_loc1_,"Spielboy.com exported data");
      }
      
      private function _GeekPrices2_HTTPService2_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.showBusyCursor = true;
         _loc1_.resultFormat = "object";
         _loc1_.addEventListener("fault",this.__additionalStatsSrv_fault);
         _loc1_.addEventListener("result",this.__additionalStatsSrv_result);
         _loc1_.initialized(this,"additionalStatsSrv");
         this.additionalStatsSrv = _loc1_;
         BindingManager.executeBindings(this,"additionalStatsSrv",this.additionalStatsSrv);
         return _loc1_;
      }
      
      public function __additionalStatsSrv_fault(param1:FaultEvent) : void
      {
         this.gameInvalidHandler();
      }
      
      public function __additionalStatsSrv_result(param1:ResultEvent) : void
      {
         this.serviceResultHandler2();
      }
      
      private function _GeekPrices2_Array3_i() : Array
      {
         var _loc1_:Array = [this._GeekPrices2_GridLines1_c()];
         this.bge = _loc1_;
         BindingManager.executeBindings(this,"bge",this.bge);
         return _loc1_;
      }
      
      private function _GeekPrices2_GridLines1_c() : GridLines
      {
         var _loc1_:GridLines = new GridLines();
         _loc1_.styleName = "gridFillStyle";
         _loc1_.setStyle("horizontalChangeCount",1);
         _loc1_.setStyle("verticalChangeCount",1);
         _loc1_.setStyle("gridDirection","both");
         _loc1_.setStyle("horizontalStroke",this._GeekPrices2_Stroke1_c());
         _loc1_.setStyle("verticalStroke",this._GeekPrices2_Stroke2_c());
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke1_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.weight = 1;
         _loc1_.alpha = 0.4;
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke2_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.weight = 1;
         _loc1_.alpha = 0.2;
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _GeekPrices2_HTTPService9_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.initialized(this,"clickLogSrv");
         this.clickLogSrv = _loc1_;
         BindingManager.executeBindings(this,"clickLogSrv",this.clickLogSrv);
         return _loc1_;
      }
      
      private function _GeekPrices2_Fade1_i() : Fade
      {
         var _loc1_:Fade = new Fade();
         _loc1_.alphaFrom = 0;
         _loc1_.alphaTo = 0.6;
         _loc1_.duration = 1000;
         this.fadeIn = _loc1_;
         BindingManager.executeBindings(this,"fadeIn",this.fadeIn);
         return _loc1_;
      }
      
      private function _GeekPrices2_HTTPService8_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.initialized(this,"hotnessDatesSrv");
         this.hotnessDatesSrv = _loc1_;
         BindingManager.executeBindings(this,"hotnessDatesSrv",this.hotnessDatesSrv);
         return _loc1_;
      }
      
      private function _GeekPrices2_HTTPService5_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.resultFormat = "e4x";
         _loc1_.showBusyCursor = true;
         _loc1_.addEventListener("result",this.__hotnessSrv_result);
         _loc1_.initialized(this,"hotnessSrv");
         this.hotnessSrv = _loc1_;
         BindingManager.executeBindings(this,"hotnessSrv",this.hotnessSrv);
         return _loc1_;
      }
      
      public function __hotnessSrv_result(param1:ResultEvent) : void
      {
         this.populateHotnessComboBox(param1);
      }
      
      private function _GeekPrices2_HTTPService7_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.resultFormat = "e4x";
         _loc1_.addEventListener("fault",this.__rateSrv_fault);
         _loc1_.addEventListener("result",this.__rateSrv_result);
         _loc1_.initialized(this,"rateSrv");
         this.rateSrv = _loc1_;
         BindingManager.executeBindings(this,"rateSrv",this.rateSrv);
         return _loc1_;
      }
      
      public function __rateSrv_fault(param1:FaultEvent) : void
      {
         this.rateSrvInvalidHandler();
      }
      
      public function __rateSrv_result(param1:ResultEvent) : void
      {
         this.rateResultHandler(param1);
      }
      
      private function _GeekPrices2_SeriesInterpolate1_i() : SeriesInterpolate
      {
         var _loc1_:SeriesInterpolate = new SeriesInterpolate();
         _loc1_.duration = 1000;
         _loc1_.minimumElementDuration = 100;
         _loc1_.elementOffset = 0;
         this.rearrangeData = _loc1_;
         BindingManager.executeBindings(this,"rearrangeData",this.rearrangeData);
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke3_i() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.color = 13421772;
         _loc1_.weight = 1;
         this.s1 = _loc1_;
         BindingManager.executeBindings(this,"s1",this.s1);
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke4_i() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.color = 13421772;
         _loc1_.weight = 1;
         this.s2 = _loc1_;
         BindingManager.executeBindings(this,"s2",this.s2);
         return _loc1_;
      }
      
      private function _GeekPrices2_SolidColor1_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16776960;
         _loc1_.alpha = 0.6;
         this.sc1 = _loc1_;
         BindingManager.executeBindings(this,"sc1",this.sc1);
         return _loc1_;
      }
      
      private function _GeekPrices2_SolidColor2_i() : SolidColor
      {
         var _loc1_:SolidColor = new SolidColor();
         _loc1_.color = 16776960;
         _loc1_.alpha = 0.6;
         this.sc2 = _loc1_;
         BindingManager.executeBindings(this,"sc2",this.sc2);
         return _loc1_;
      }
      
      private function _GeekPrices2_HTTPService6_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.showBusyCursor = true;
         _loc1_.addEventListener("fault",this.__searchSrv_fault);
         _loc1_.addEventListener("result",this.__searchSrv_result);
         _loc1_.initialized(this,"searchSrv");
         this.searchSrv = _loc1_;
         BindingManager.executeBindings(this,"searchSrv",this.searchSrv);
         return _loc1_;
      }
      
      public function __searchSrv_fault(param1:FaultEvent) : void
      {
         this.searchInvalidHandler();
      }
      
      public function __searchSrv_result(param1:ResultEvent) : void
      {
         this.displaySearchPopup(param1);
      }
      
      private function _GeekPrices2_HTTPService1_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.showBusyCursor = true;
         _loc1_.addEventListener("fault",this.__srv_fault);
         _loc1_.addEventListener("result",this.__srv_result);
         _loc1_.initialized(this,"srv");
         this.srv = _loc1_;
         BindingManager.executeBindings(this,"srv",this.srv);
         return _loc1_;
      }
      
      public function __srv_fault(param1:FaultEvent) : void
      {
         this.gameInvalidHandler();
      }
      
      public function __srv_result(param1:ResultEvent) : void
      {
         this.serviceResultHandler();
      }
      
      private function _GeekPrices2_HTTPService4_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.resultFormat = "e4x";
         _loc1_.showBusyCursor = true;
         _loc1_.addEventListener("fault",this.__srv2_fault);
         _loc1_.addEventListener("result",this.__srv2_result);
         _loc1_.initialized(this,"srv2");
         this.srv2 = _loc1_;
         BindingManager.executeBindings(this,"srv2",this.srv2);
         return _loc1_;
      }
      
      public function __srv2_fault(param1:FaultEvent) : void
      {
         this.collectionInvalidHandler();
      }
      
      public function __srv2_result(param1:ResultEvent) : void
      {
         this.populateComboBox(param1);
      }
      
      private function _GeekPrices2_HTTPService3_i() : HTTPService
      {
         var _loc1_:HTTPService = new HTTPService();
         _loc1_.showBusyCursor = true;
         _loc1_.addEventListener("fault",this.__srvSales_fault);
         _loc1_.addEventListener("result",this.__srvSales_result);
         _loc1_.initialized(this,"srvSales");
         this.srvSales = _loc1_;
         BindingManager.executeBindings(this,"srvSales",this.srvSales);
         return _loc1_;
      }
      
      public function __srvSales_fault(param1:FaultEvent) : void
      {
         this.salesInvalidHandler();
      }
      
      public function __srvSales_result(param1:ResultEvent) : void
      {
         this.salesResultHandler();
      }
      
      public function ___GeekPrices2_Application1_creationComplete(param1:FlexEvent) : void
      {
         this.initApp();
      }
      
      private function _GeekPrices2_RangeSelector1_c() : RangeSelector
      {
         var _loc1_:RangeSelector = new RangeSelector();
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         return _loc1_;
      }
      
      private function _GeekPrices2_TrendCartesianDataCanvas1_i() : TrendCartesianDataCanvas
      {
         var _loc1_:TrendCartesianDataCanvas = new TrendCartesianDataCanvas();
         _loc1_.includeInRanges = true;
         _loc1_.id = "canvas";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.canvas = _loc1_;
         BindingManager.executeBindings(this,"canvas",this.canvas);
         return _loc1_;
      }
      
      private function _GeekPrices2_PlotSeries1_i() : PlotSeries
      {
         var _loc1_:PlotSeries = new PlotSeries();
         _loc1_.xField = "saledate";
         _loc1_.yField = "price";
         _loc1_.displayName = "Historical/Completed Sales";
         _loc1_.fillFunction = this.myFillFunction;
         _loc1_.setStyle("showDataEffect","rearrangeData");
         _loc1_.registerEffects(["showDataEffect"]);
         _loc1_.id = "series_sold";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.series_sold = _loc1_;
         BindingManager.executeBindings(this,"series_sold",this.series_sold);
         return _loc1_;
      }
      
      private function _GeekPrices2_PlotSeries2_i() : PlotSeries
      {
         var _loc1_:PlotSeries = new PlotSeries();
         _loc1_.xField = "listdate";
         _loc1_.yField = "price";
         _loc1_.displayName = "For Sale";
         _loc1_.fillFunction = this.myFillFunction;
         _loc1_.setStyle("showDataEffect","rearrangeData");
         _loc1_.registerEffects(["showDataEffect"]);
         _loc1_.id = "series_forsale";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.series_forsale = _loc1_;
         BindingManager.executeBindings(this,"series_forsale",this.series_forsale);
         return _loc1_;
      }
      
      private function _GeekPrices2_DateTimeAxis1_i() : DateTimeAxis
      {
         var _loc1_:DateTimeAxis = new DateTimeAxis();
         _loc1_.dataUnits = "days";
         this.hAxis = _loc1_;
         BindingManager.executeBindings(this,"hAxis",this.hAxis);
         return _loc1_;
      }
      
      private function _GeekPrices2_LinearAxis1_i() : LinearAxis
      {
         var _loc1_:LinearAxis = new LinearAxis();
         _loc1_.labelFunction = this.verticalAxisRendererFunction;
         this.vAxis = _loc1_;
         BindingManager.executeBindings(this,"vAxis",this.vAxis);
         return _loc1_;
      }
      
      private function _GeekPrices2_AxisRenderer1_i() : AxisRenderer
      {
         var _loc1_:AxisRenderer = new AxisRenderer();
         _loc1_.setStyle("tickStroke",this._GeekPrices2_Stroke5_c());
         _loc1_.setStyle("axisStroke",this._GeekPrices2_Stroke6_c());
         _loc1_.setStyle("minorTickStroke",this._GeekPrices2_Stroke7_c());
         _loc1_.id = "hAxisRend";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.hAxisRend = _loc1_;
         BindingManager.executeBindings(this,"hAxisRend",this.hAxisRend);
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke5_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke6_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke7_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _GeekPrices2_AxisRenderer2_i() : AxisRenderer
      {
         var _loc1_:AxisRenderer = new AxisRenderer();
         _loc1_.setStyle("axisStroke",this._GeekPrices2_Stroke8_c());
         _loc1_.setStyle("tickStroke",this._GeekPrices2_Stroke9_c());
         _loc1_.setStyle("minorTickStroke",this._GeekPrices2_Stroke10_c());
         _loc1_.id = "vAxisRend";
         if(!_loc1_.document)
         {
            _loc1_.document = this;
         }
         this.vAxisRend = _loc1_;
         BindingManager.executeBindings(this,"vAxisRend",this.vAxisRend);
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke8_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.weight = 1;
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke9_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.color = 0;
         return _loc1_;
      }
      
      private function _GeekPrices2_Stroke10_c() : Stroke
      {
         var _loc1_:Stroke = new Stroke();
         _loc1_.color = 0;
         return _loc1_;
      }
      
      public function __myChart_valueCommit(param1:FlexEvent) : void
      {
         Alert.show("change");
      }
      
      public function __myChart_itemRollOver(param1:ChartItemEvent) : void
      {
         this.handleItemRollOver(param1);
      }
      
      public function __myChart_itemRollOut(param1:ChartItemEvent) : void
      {
         this.handleItemRollOut();
      }
      
      public function __myChart_itemClick(param1:ChartItemEvent) : void
      {
         this.itemClickHandler(param1);
      }
      
      private function _GeekPrices2_DataGridColumn1_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Sale Date";
         _loc1_.dataField = "saledate";
         return _loc1_;
      }
      
      private function _GeekPrices2_DataGridColumn2_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Price";
         _loc1_.dataField = "price";
         return _loc1_;
      }
      
      private function _GeekPrices2_DataGridColumn3_c() : DataGridColumn
      {
         var _loc1_:DataGridColumn = new DataGridColumn();
         _loc1_.headerText = "Condition";
         _loc1_.dataField = "condition";
         return _loc1_;
      }
      
      public function __dynamicCB_change(param1:ListEvent) : void
      {
         this.resetDates();
         this.gameSelectionHandler(param1);
      }
      
      public function __hotnessGameCB_change(param1:ListEvent) : void
      {
         this.resetDates();
         this.hotnessSelectionHandler(param1);
      }
      
      public function __collectionName_keyUp(param1:KeyboardEvent) : void
      {
         this.collectionInputHandler(param1);
      }
      
      public function __gameImage_click(param1:MouseEvent) : void
      {
         this.navToBGG();
      }
      
      public function __gameData_mouseOver(param1:MouseEvent) : void
      {
         this.gameData.setStyle("textDecoration","underline");
      }
      
      public function __gameData_mouseOut(param1:MouseEvent) : void
      {
         this.gameData.setStyle("textDecoration","normal");
      }
      
      public function __gameData_click(param1:MouseEvent) : void
      {
         this.navToBGG();
      }
      
      public function __searchInput_keyUp(param1:KeyboardEvent) : void
      {
         this.searchInputHandler(param1);
      }
      
      public function __hotnessDateCB_change(param1:ListEvent) : void
      {
         this.changeHotnessDate(param1);
      }
      
      public function __startDateField_change(param1:CalendarLayoutChangeEvent) : void
      {
         this.minDate = this.startDateField.selectedDate;
      }
      
      public function __startDateField_focusIn(param1:FocusEvent) : void
      {
         if(this.startDateField.text == "MIN")
         {
            this.startDateField.text = this.startDateField.formatString.toString();
         }
      }
      
      public function __endDateField_change(param1:CalendarLayoutChangeEvent) : void
      {
         this.maxDate = this.endDateField.selectedDate;
      }
      
      public function __endDateField_focusIn(param1:FocusEvent) : void
      {
         if(this.endDateField.text == "MAX")
         {
            this.endDateField.text = this.endDateField.formatString.toString();
         }
      }
      
      public function __dateResetButton_click(param1:MouseEvent) : void
      {
         this.resetDates();
      }
      
      public function __logAxisToggle_change(param1:Event) : void
      {
         this.toggleAxis();
      }
      
      private function _GeekPrices2_ArrayCollection1_c() : ArrayCollection
      {
         var _loc1_:ArrayCollection = new ArrayCollection();
         _loc1_.source = [{
            "label":"All",
            "value":"all"
         },{
            "label":"New",
            "value":"new"
         },{
            "label":"Like New",
            "value":"likenew"
         },{
            "label":"Very Good",
            "value":"verygood"
         },{
            "label":"Good",
            "value":"good"
         },{
            "label":"Acceptable",
            "value":"acceptable"
         }];
         _loc1_.initialized(this,null);
         return _loc1_;
      }
      
      public function __conditionFilterCB_change(param1:ListEvent) : void
      {
         this.toggleFilters();
      }
      
      public function __funagainLinkBox_click(param1:MouseEvent) : void
      {
         this.buildFunagainLink();
      }
      
      public function __funagainLabel_click(param1:MouseEvent) : void
      {
         this.buildFunagainLink();
      }
      
      public function __includeNonUSD_click(param1:MouseEvent) : void
      {
         this.toggleFilters();
      }
      
      public function __includeNonUSD_focusOut(param1:FocusEvent) : void
      {
         this.enableEffects(true);
      }
      
      public function __includeNonUSD_focusIn(param1:FocusEvent) : void
      {
         this.enableEffects(false);
      }
      
      public function ___GeekPrices2_Button2_click(param1:MouseEvent) : void
      {
         this.searchButtonHandler();
      }
      
      public function ___GeekPrices2_Button3_click(param1:MouseEvent) : void
      {
         this.collectionButtonHandler();
      }
      
      public function __historyTrendButton_click(param1:MouseEvent) : void
      {
         this.addTrendLine(this.series_sold);
      }
      
      public function __forSaleTrendButton_click(param1:MouseEvent) : void
      {
         this.addTrendLine(this.series_forsale);
      }
      
      public function ___GeekPrices2_Button6_click(param1:MouseEvent) : void
      {
         this.exportDataAsCSV();
      }
      
      private function _GeekPrices2_bindingsSetup() : Array
      {
         var result:Array = [];
         result[0] = new Binding(this,function():Array
         {
            var _loc1_:* = bge;
            return _loc1_ == null || _loc1_ is Array || _loc1_ is Proxy?_loc1_:[_loc1_];
         },null,"myChart.backgroundElements","bge");
         result[1] = new Binding(this,function():Boolean
         {
            return showGamesSold.selected;
         },null,"series_sold.visible");
         result[2] = new Binding(this,null,null,"series_sold.dataProvider","historyListings");
         result[3] = new Binding(this,null,function(param1:IFill):void
         {
            series_sold.setStyle("fill",param1);
         },"series_sold.fill","sc1");
         result[4] = new Binding(this,null,function(param1:IStroke):void
         {
            series_sold.setStyle("stroke",param1);
         },"series_sold.stroke","s1");
         result[5] = new Binding(this,function():Boolean
         {
            return showGamesForSale.selected;
         },null,"series_forsale.visible");
         result[6] = new Binding(this,null,null,"series_forsale.dataProvider","forSaleListings");
         result[7] = new Binding(this,null,function(param1:IFill):void
         {
            series_forsale.setStyle("fill",param1);
         },"series_forsale.fill","sc2");
         result[8] = new Binding(this,null,function(param1:IStroke):void
         {
            series_forsale.setStyle("stroke",param1);
         },"series_forsale.stroke","s2");
         result[9] = new Binding(this,null,null,"hAxis.minimum","minDate");
         result[10] = new Binding(this,null,null,"hAxis.maximum","maxDate");
         result[11] = new Binding(this,null,null,"hAxisRend.axis","hAxis");
         result[12] = new Binding(this,null,null,"vAxisRend.axis","vAxis");
         result[13] = new Binding(this,null,null,"salesDataDG.dataProvider","historyListings");
         result[14] = new Binding(this,null,null,"dynamicCB.dataProvider","comboData");
         result[15] = new Binding(this,null,null,"hotnessGameCB.dataProvider","hotnessData");
         result[16] = new Binding(this,null,null,"gameStatsData.htmlText","usersWanting");
         result[17] = new Binding(this,function():Object
         {
            return hotnessDatesSrv.lastResult.data.date;
         },null,"hotnessDateCB.dataProvider");
         result[18] = new Binding(this,null,null,"startDateField.selectedDate","minDate");
         result[19] = new Binding(this,null,null,"endDateField.selectedDate","maxDate");
         result[20] = new Binding(this,function():String
         {
            var _loc1_:* = FlexGlobals.topLevelApplication.parameters.version;
            return _loc1_ == undefined?null:String(_loc1_);
         },null,"versionLabel.text");
         result[21] = new Binding(this,function():Boolean
         {
            return showGamesSold.selected;
         },null,"historyTrendButton.enabled");
         result[22] = new Binding(this,function():Boolean
         {
            return showGamesForSale.selected;
         },null,"forSaleTrendButton.enabled");
         result[23] = new Binding(this,function():Boolean
         {
            return funagainLabel.visible;
         },null,"_GeekPrices2_Button6.enabled");
         return result;
      }
      
      mx_internal function _GeekPrices2_StylesInit() : void
      {
         var style:CSSStyleDeclaration = null;
         var effects:Array = null;
         var conditions:Array = null;
         var condition:CSSCondition = null;
         var selector:CSSSelector = null;
         if(mx_internal::_GeekPrices2_StylesInit_done)
         {
            return;
         }
         mx_internal::_GeekPrices2_StylesInit_done = true;
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.DataGrid",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.DataGrid");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 0;
               this.alternatingItemColors = [15724527,16777215];
               this.rollOverColor = 16776994;
               this.headerStyleName = "mydataGridHeaderStyle";
               this.headerColors = [0,6710886];
               this.selectionColor = 16777045;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","gridFillStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".gridFillStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.horizontalFill = 4868682;
               this.horizontalAlternateFill = 5921370;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","mydataGridHeaderStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".mydataGridHeaderStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "bold";
               this.textDecoration = "none";
               this.color = 13421772;
               this.textAlign = "left";
               this.fontStyle = "normal";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","myAxisStyles");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".myAxisStyles");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.tickPlacement = "none";
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","xRateStyle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".xRateStyle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "normal";
               this.fontSize = 11;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertTitle");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".alertTitle");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "bold";
               this.color = 16711680;
               this.letterSpacing = 0;
               this.fontSize = 14;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertMessage");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".alertMessage");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "normal";
               this.color = 16777215;
               this.letterSpacing = 0;
               this.fontSize = 10;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","alertButton");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".alertButton");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.fontWeight = "normal";
               this.color = 16711680;
               this.letterSpacing = 0;
               this.cornerRadius = 10;
               this.textRollOverColor = 16777215;
               this.fontSize = 11;
               this.skin = null;
            };
         }
         selector = null;
         conditions = null;
         conditions = [];
         condition = new CSSCondition("class","myVScrollBar");
         conditions.push(condition);
         selector = new CSSSelector("",conditions,selector);
         style = styleManager.getStyleDeclaration(".myVScrollBar");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.downArrowUpSkin = _embed_css__images_downArrow_png__337795385_1074078652;
               this.thumbIcon = null;
               this.thumbDownSkin = null;
               this.upArrowOverSkin = _embed_css__images_upArrow_png__1063861714_276916543;
               this.thumbOverSkin = null;
               this.width = 3;
               this.thumbUpSkin = null;
               this.thumbSkin = null;
               this.upArrowUpSkin = _embed_css__images_upArrow_png__1063861714_276916543;
               this.trackSkin = _embed_css__images_scrolltrack_png__288783330_760664061;
               this.downArrowDownSkin = _embed_css__images_downArrow_png__337795385_1074078652;
               this.upArrowDownSkin = _embed_css__images_upArrow_png__1063861714_276916543;
               this.downArrowOverSkin = _embed_css__images_downArrow_png__337795385_1074078652;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.charts.PlotChart",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.charts.PlotChart");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.verticalAxisStyleName = "myAxisStyles";
               this.paddingTop = 20;
               this.gutterLeft = 40;
               this.color = 16513272;
               this.horizontalAxisStyleName = "myAxisStyles";
               this.gutterRight = 20;
               this.gutterBottom = 40;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Label",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.Label");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16513272;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.CheckBox",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.CheckBox");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16513272;
               this.textRollOverColor = 16513272;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.charts.LegendItem",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.charts.LegendItem");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16513272;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.LinkButton",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.LinkButton");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.color = 16513272;
            };
         }
         selector = null;
         conditions = null;
         conditions = null;
         selector = new CSSSelector("mx.controls.Alert",conditions,selector);
         style = styleManager.getStyleDeclaration("mx.controls.Alert");
         if(!style)
         {
            style = new CSSStyleDeclaration(selector,styleManager);
         }
         if(style.factory == null)
         {
            style.factory = function():void
            {
               this.shadowDirection = "right";
               this.titleStyleName = "alertTitle";
               this.embedFonts = true;
               this.borderColor = 0;
               this.dropShadowEnabled = true;
               this.messageStyleName = "alertMessage";
               this.backgroundColor = 0;
               this.buttonStyleName = "alertButton";
               this.shadowDistance = 5;
               this.cornerRadius = 5;
            };
         }
         styleManager.initProtoChainRoots();
      }
      
      [Bindable(event="propertyChange")]
      public function get additionalStatsSrv() : HTTPService
      {
         return this._515338721additionalStatsSrv;
      }
      
      public function set additionalStatsSrv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._515338721additionalStatsSrv;
         if(_loc2_ !== param1)
         {
            this._515338721additionalStatsSrv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"additionalStatsSrv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get audLabel() : Label
      {
         return this._948716068audLabel;
      }
      
      public function set audLabel(param1:Label) : void
      {
         var _loc2_:Object = this._948716068audLabel;
         if(_loc2_ !== param1)
         {
            this._948716068audLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"audLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get bge() : Array
      {
         return this._97472bge;
      }
      
      public function set bge(param1:Array) : void
      {
         var _loc2_:Object = this._97472bge;
         if(_loc2_ !== param1)
         {
            this._97472bge = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"bge",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get cadLabel() : Label
      {
         return this._430834994cadLabel;
      }
      
      public function set cadLabel(param1:Label) : void
      {
         var _loc2_:Object = this._430834994cadLabel;
         if(_loc2_ !== param1)
         {
            this._430834994cadLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cadLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get canvas() : TrendCartesianDataCanvas
      {
         return this._1367706280canvas;
      }
      
      public function set canvas(param1:TrendCartesianDataCanvas) : void
      {
         var _loc2_:Object = this._1367706280canvas;
         if(_loc2_ !== param1)
         {
            this._1367706280canvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"canvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get clickLogSrv() : HTTPService
      {
         return this._1137317819clickLogSrv;
      }
      
      public function set clickLogSrv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._1137317819clickLogSrv;
         if(_loc2_ !== param1)
         {
            this._1137317819clickLogSrv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"clickLogSrv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get collectionName() : TextInput
      {
         return this._310779465collectionName;
      }
      
      public function set collectionName(param1:TextInput) : void
      {
         var _loc2_:Object = this._310779465collectionName;
         if(_loc2_ !== param1)
         {
            this._310779465collectionName = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"collectionName",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get conditionFilterCB() : ComboBox
      {
         return this._1291690990conditionFilterCB;
      }
      
      public function set conditionFilterCB(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1291690990conditionFilterCB;
         if(_loc2_ !== param1)
         {
            this._1291690990conditionFilterCB = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"conditionFilterCB",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dateResetButton() : Button
      {
         return this._476219181dateResetButton;
      }
      
      public function set dateResetButton(param1:Button) : void
      {
         var _loc2_:Object = this._476219181dateResetButton;
         if(_loc2_ !== param1)
         {
            this._476219181dateResetButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dateResetButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get dynamicCB() : ComboBox
      {
         return this._1791907038dynamicCB;
      }
      
      public function set dynamicCB(param1:ComboBox) : void
      {
         var _loc2_:Object = this._1791907038dynamicCB;
         if(_loc2_ !== param1)
         {
            this._1791907038dynamicCB = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"dynamicCB",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get endDateField() : DateField
      {
         return this._683492527endDateField;
      }
      
      public function set endDateField(param1:DateField) : void
      {
         var _loc2_:Object = this._683492527endDateField;
         if(_loc2_ !== param1)
         {
            this._683492527endDateField = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"endDateField",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get euroLabel() : Label
      {
         return this._1228286983euroLabel;
      }
      
      public function set euroLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1228286983euroLabel;
         if(_loc2_ !== param1)
         {
            this._1228286983euroLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"euroLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get fadeIn() : Fade
      {
         return this._1282133823fadeIn;
      }
      
      public function set fadeIn(param1:Fade) : void
      {
         var _loc2_:Object = this._1282133823fadeIn;
         if(_loc2_ !== param1)
         {
            this._1282133823fadeIn = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"fadeIn",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forSaleTrendButton() : Button
      {
         return this._83644511forSaleTrendButton;
      }
      
      public function set forSaleTrendButton(param1:Button) : void
      {
         var _loc2_:Object = this._83644511forSaleTrendButton;
         if(_loc2_ !== param1)
         {
            this._83644511forSaleTrendButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forSaleTrendButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get funagainLabel() : Text
      {
         return this._1931972045funagainLabel;
      }
      
      public function set funagainLabel(param1:Text) : void
      {
         var _loc2_:Object = this._1931972045funagainLabel;
         if(_loc2_ !== param1)
         {
            this._1931972045funagainLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funagainLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get funagainLinkBox() : Image
      {
         return this._959005968funagainLinkBox;
      }
      
      public function set funagainLinkBox(param1:Image) : void
      {
         var _loc2_:Object = this._959005968funagainLinkBox;
         if(_loc2_ !== param1)
         {
            this._959005968funagainLinkBox = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"funagainLinkBox",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameCanvas() : VBox
      {
         return this._152006634gameCanvas;
      }
      
      public function set gameCanvas(param1:VBox) : void
      {
         var _loc2_:Object = this._152006634gameCanvas;
         if(_loc2_ !== param1)
         {
            this._152006634gameCanvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameCanvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameData() : Text
      {
         return this._1769642308gameData;
      }
      
      public function set gameData(param1:Text) : void
      {
         var _loc2_:Object = this._1769642308gameData;
         if(_loc2_ !== param1)
         {
            this._1769642308gameData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameImage() : Image
      {
         return this._980620425gameImage;
      }
      
      public function set gameImage(param1:Image) : void
      {
         var _loc2_:Object = this._980620425gameImage;
         if(_loc2_ !== param1)
         {
            this._980620425gameImage = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameImage",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameLinkLabel() : Label
      {
         return this._1125257400gameLinkLabel;
      }
      
      public function set gameLinkLabel(param1:Label) : void
      {
         var _loc2_:Object = this._1125257400gameLinkLabel;
         if(_loc2_ !== param1)
         {
            this._1125257400gameLinkLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameLinkLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gameStatsData() : Text
      {
         return this._1556290281gameStatsData;
      }
      
      public function set gameStatsData(param1:Text) : void
      {
         var _loc2_:Object = this._1556290281gameStatsData;
         if(_loc2_ !== param1)
         {
            this._1556290281gameStatsData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gameStatsData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get gbpLabel() : Label
      {
         return this._818474753gbpLabel;
      }
      
      public function set gbpLabel(param1:Label) : void
      {
         var _loc2_:Object = this._818474753gbpLabel;
         if(_loc2_ !== param1)
         {
            this._818474753gbpLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gbpLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hAxis() : DateTimeAxis
      {
         return this._98101289hAxis;
      }
      
      public function set hAxis(param1:DateTimeAxis) : void
      {
         var _loc2_:Object = this._98101289hAxis;
         if(_loc2_ !== param1)
         {
            this._98101289hAxis = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hAxis",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hAxisRend() : AxisRenderer
      {
         return this._562920178hAxisRend;
      }
      
      public function set hAxisRend(param1:AxisRenderer) : void
      {
         var _loc2_:Object = this._562920178hAxisRend;
         if(_loc2_ !== param1)
         {
            this._562920178hAxisRend = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hAxisRend",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get historyTrendButton() : Button
      {
         return this._1408005637historyTrendButton;
      }
      
      public function set historyTrendButton(param1:Button) : void
      {
         var _loc2_:Object = this._1408005637historyTrendButton;
         if(_loc2_ !== param1)
         {
            this._1408005637historyTrendButton = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"historyTrendButton",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hotnessDateCB() : ComboBox
      {
         return this._278607313hotnessDateCB;
      }
      
      public function set hotnessDateCB(param1:ComboBox) : void
      {
         var _loc2_:Object = this._278607313hotnessDateCB;
         if(_loc2_ !== param1)
         {
            this._278607313hotnessDateCB = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotnessDateCB",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hotnessDatesSrv() : HTTPService
      {
         return this._1455105398hotnessDatesSrv;
      }
      
      public function set hotnessDatesSrv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._1455105398hotnessDatesSrv;
         if(_loc2_ !== param1)
         {
            this._1455105398hotnessDatesSrv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotnessDatesSrv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hotnessGameCB() : ComboBox
      {
         return this._364286229hotnessGameCB;
      }
      
      public function set hotnessGameCB(param1:ComboBox) : void
      {
         var _loc2_:Object = this._364286229hotnessGameCB;
         if(_loc2_ !== param1)
         {
            this._364286229hotnessGameCB = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotnessGameCB",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hotnessSrv() : HTTPService
      {
         return this._123433779hotnessSrv;
      }
      
      public function set hotnessSrv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._123433779hotnessSrv;
         if(_loc2_ !== param1)
         {
            this._123433779hotnessSrv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotnessSrv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get includeNonUSD() : CheckBox
      {
         return this._2030390719includeNonUSD;
      }
      
      public function set includeNonUSD(param1:CheckBox) : void
      {
         var _loc2_:Object = this._2030390719includeNonUSD;
         if(_loc2_ !== param1)
         {
            this._2030390719includeNonUSD = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"includeNonUSD",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get logAxisToggle() : CheckBox
      {
         return this._1484180665logAxisToggle;
      }
      
      public function set logAxisToggle(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1484180665logAxisToggle;
         if(_loc2_ !== param1)
         {
            this._1484180665logAxisToggle = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"logAxisToggle",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get myChart() : PlotChart
      {
         return this._1482851730myChart;
      }
      
      public function set myChart(param1:PlotChart) : void
      {
         var _loc2_:Object = this._1482851730myChart;
         if(_loc2_ !== param1)
         {
            this._1482851730myChart = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"myChart",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rateSrv() : HTTPService
      {
         return this._983452919rateSrv;
      }
      
      public function set rateSrv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._983452919rateSrv;
         if(_loc2_ !== param1)
         {
            this._983452919rateSrv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rateSrv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rearrangeData() : SeriesInterpolate
      {
         return this._1173812579rearrangeData;
      }
      
      public function set rearrangeData(param1:SeriesInterpolate) : void
      {
         var _loc2_:Object = this._1173812579rearrangeData;
         if(_loc2_ !== param1)
         {
            this._1173812579rearrangeData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rearrangeData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get rule() : HRule
      {
         return this._3512060rule;
      }
      
      public function set rule(param1:HRule) : void
      {
         var _loc2_:Object = this._3512060rule;
         if(_loc2_ !== param1)
         {
            this._3512060rule = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"rule",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s1() : Stroke
      {
         return this._3614s1;
      }
      
      public function set s1(param1:Stroke) : void
      {
         var _loc2_:Object = this._3614s1;
         if(_loc2_ !== param1)
         {
            this._3614s1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get s2() : Stroke
      {
         return this._3615s2;
      }
      
      public function set s2(param1:Stroke) : void
      {
         var _loc2_:Object = this._3615s2;
         if(_loc2_ !== param1)
         {
            this._3615s2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"s2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get salesDataDG() : DataGrid
      {
         return this._944304601salesDataDG;
      }
      
      public function set salesDataDG(param1:DataGrid) : void
      {
         var _loc2_:Object = this._944304601salesDataDG;
         if(_loc2_ !== param1)
         {
            this._944304601salesDataDG = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"salesDataDG",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sc1() : SolidColor
      {
         return this._113633sc1;
      }
      
      public function set sc1(param1:SolidColor) : void
      {
         var _loc2_:Object = this._113633sc1;
         if(_loc2_ !== param1)
         {
            this._113633sc1 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sc1",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get sc2() : SolidColor
      {
         return this._113634sc2;
      }
      
      public function set sc2(param1:SolidColor) : void
      {
         var _loc2_:Object = this._113634sc2;
         if(_loc2_ !== param1)
         {
            this._113634sc2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"sc2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchInput() : TextInput
      {
         return this._559723774searchInput;
      }
      
      public function set searchInput(param1:TextInput) : void
      {
         var _loc2_:Object = this._559723774searchInput;
         if(_loc2_ !== param1)
         {
            this._559723774searchInput = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchInput",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get searchSrv() : HTTPService
      {
         return this._1778196271searchSrv;
      }
      
      public function set searchSrv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._1778196271searchSrv;
         if(_loc2_ !== param1)
         {
            this._1778196271searchSrv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"searchSrv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get series_forsale() : PlotSeries
      {
         return this._1864695496series_forsale;
      }
      
      public function set series_forsale(param1:PlotSeries) : void
      {
         var _loc2_:Object = this._1864695496series_forsale;
         if(_loc2_ !== param1)
         {
            this._1864695496series_forsale = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"series_forsale",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get series_sold() : PlotSeries
      {
         return this._1911676516series_sold;
      }
      
      public function set series_sold(param1:PlotSeries) : void
      {
         var _loc2_:Object = this._1911676516series_sold;
         if(_loc2_ !== param1)
         {
            this._1911676516series_sold = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"series_sold",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showGamesForSale() : CheckBox
      {
         return this._1746875828showGamesForSale;
      }
      
      public function set showGamesForSale(param1:CheckBox) : void
      {
         var _loc2_:Object = this._1746875828showGamesForSale;
         if(_loc2_ !== param1)
         {
            this._1746875828showGamesForSale = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGamesForSale",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get showGamesSold() : CheckBox
      {
         return this._377332920showGamesSold;
      }
      
      public function set showGamesSold(param1:CheckBox) : void
      {
         var _loc2_:Object = this._377332920showGamesSold;
         if(_loc2_ !== param1)
         {
            this._377332920showGamesSold = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGamesSold",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get srv() : HTTPService
      {
         return this._114167srv;
      }
      
      public function set srv(param1:HTTPService) : void
      {
         var _loc2_:Object = this._114167srv;
         if(_loc2_ !== param1)
         {
            this._114167srv = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"srv",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get srv2() : HTTPService
      {
         return this._3539227srv2;
      }
      
      public function set srv2(param1:HTTPService) : void
      {
         var _loc2_:Object = this._3539227srv2;
         if(_loc2_ !== param1)
         {
            this._3539227srv2 = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"srv2",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get srvSales() : HTTPService
      {
         return this._113818965srvSales;
      }
      
      public function set srvSales(param1:HTTPService) : void
      {
         var _loc2_:Object = this._113818965srvSales;
         if(_loc2_ !== param1)
         {
            this._113818965srvSales = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"srvSales",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get startDateField() : DateField
      {
         return this._626620502startDateField;
      }
      
      public function set startDateField(param1:DateField) : void
      {
         var _loc2_:Object = this._626620502startDateField;
         if(_loc2_ !== param1)
         {
            this._626620502startDateField = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"startDateField",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vAxis() : LinearAxis
      {
         return this._111030583vAxis;
      }
      
      public function set vAxis(param1:LinearAxis) : void
      {
         var _loc2_:Object = this._111030583vAxis;
         if(_loc2_ !== param1)
         {
            this._111030583vAxis = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vAxis",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get vAxisRend() : AxisRenderer
      {
         return this._1028361472vAxisRend;
      }
      
      public function set vAxisRend(param1:AxisRenderer) : void
      {
         var _loc2_:Object = this._1028361472vAxisRend;
         if(_loc2_ !== param1)
         {
            this._1028361472vAxisRend = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"vAxisRend",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get versionLabel() : Text
      {
         return this._120604420versionLabel;
      }
      
      public function set versionLabel(param1:Text) : void
      {
         var _loc2_:Object = this._120604420versionLabel;
         if(_loc2_ !== param1)
         {
            this._120604420versionLabel = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"versionLabel",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get historyListings() : ArrayCollection
      {
         return this._2033906909historyListings;
      }
      
      public function set historyListings(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._2033906909historyListings;
         if(_loc2_ !== param1)
         {
            this._2033906909historyListings = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"historyListings",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get forSaleListings() : ArrayCollection
      {
         return this._1102807233forSaleListings;
      }
      
      public function set forSaleListings(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._1102807233forSaleListings;
         if(_loc2_ !== param1)
         {
            this._1102807233forSaleListings = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"forSaleListings",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get testRetailAC() : ArrayCollection
      {
         return this._388610839testRetailAC;
      }
      
      public function set testRetailAC(param1:ArrayCollection) : void
      {
         var _loc2_:Object = this._388610839testRetailAC;
         if(_loc2_ !== param1)
         {
            this._388610839testRetailAC = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"testRetailAC",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get minDate() : Date
      {
         return this._1063424288minDate;
      }
      
      public function set minDate(param1:Date) : void
      {
         var _loc2_:Object = this._1063424288minDate;
         if(_loc2_ !== param1)
         {
            this._1063424288minDate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"minDate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get maxDate() : Date
      {
         return this._843626290maxDate;
      }
      
      public function set maxDate(param1:Date) : void
      {
         var _loc2_:Object = this._843626290maxDate;
         if(_loc2_ !== param1)
         {
            this._843626290maxDate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"maxDate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get comboData() : XMLList
      {
         return this._1801970088comboData;
      }
      
      public function set comboData(param1:XMLList) : void
      {
         var _loc2_:Object = this._1801970088comboData;
         if(_loc2_ !== param1)
         {
            this._1801970088comboData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"comboData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get hotnessData() : XMLList
      {
         return this._468983314hotnessData;
      }
      
      public function set hotnessData(param1:XMLList) : void
      {
         var _loc2_:Object = this._468983314hotnessData;
         if(_loc2_ !== param1)
         {
            this._468983314hotnessData = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"hotnessData",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get nameForFunagain() : String
      {
         return this._955052641nameForFunagain;
      }
      
      public function set nameForFunagain(param1:String) : void
      {
         var _loc2_:Object = this._955052641nameForFunagain;
         if(_loc2_ !== param1)
         {
            this._955052641nameForFunagain = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"nameForFunagain",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get ratesXML() : XMLList
      {
         return this._423196548ratesXML;
      }
      
      public function set ratesXML(param1:XMLList) : void
      {
         var _loc2_:Object = this._423196548ratesXML;
         if(_loc2_ !== param1)
         {
            this._423196548ratesXML = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"ratesXML",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get euroRate() : Number
      {
         return this._237293203euroRate;
      }
      
      private function set euroRate(param1:Number) : void
      {
         var _loc2_:Object = this._237293203euroRate;
         if(_loc2_ !== param1)
         {
            this._237293203euroRate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"euroRate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get cadRate() : Number
      {
         return this._540470726cadRate;
      }
      
      private function set cadRate(param1:Number) : void
      {
         var _loc2_:Object = this._540470726cadRate;
         if(_loc2_ !== param1)
         {
            this._540470726cadRate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"cadRate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get audRate() : Number
      {
         return this._661953616audRate;
      }
      
      private function set audRate(param1:Number) : void
      {
         var _loc2_:Object = this._661953616audRate;
         if(_loc2_ !== param1)
         {
            this._661953616audRate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"audRate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get gbpRate() : Number
      {
         return this._164770443gbpRate;
      }
      
      private function set gbpRate(param1:Number) : void
      {
         var _loc2_:Object = this._164770443gbpRate;
         if(_loc2_ !== param1)
         {
            this._164770443gbpRate = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"gbpRate",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      private function get showGameStatsCanvas() : Boolean
      {
         return this._1648974136showGameStatsCanvas;
      }
      
      private function set showGameStatsCanvas(param1:Boolean) : void
      {
         var _loc2_:Object = this._1648974136showGameStatsCanvas;
         if(_loc2_ !== param1)
         {
            this._1648974136showGameStatsCanvas = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"showGameStatsCanvas",_loc2_,param1));
            }
         }
      }
      
      [Bindable(event="propertyChange")]
      public function get usersWanting() : String
      {
         return this._512736426usersWanting;
      }
      
      public function set usersWanting(param1:String) : void
      {
         var _loc2_:Object = this._512736426usersWanting;
         if(_loc2_ !== param1)
         {
            this._512736426usersWanting = param1;
            if(this.hasEventListener("propertyChange"))
            {
               this.dispatchEvent(PropertyChangeEvent.createUpdateEvent(this,"usersWanting",_loc2_,param1));
            }
         }
      }
   }
}
