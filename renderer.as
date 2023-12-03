package {
  import flash.filters.DropShadowFilter;
  import flash.text.TextField;
  import flash.text.TextFormat;

  public class renderer {
    private static const TEXT_SHADOW:DropShadowFilter = new DropShadowFilter(1,45,0,1,0,0,1,1);
    private static const TEXT_FORMAT_DEFAULT:TextFormat = new TextFormat("Open Sans",12,16777215,false);
    private static const TEXT_FORMAT_SMALL:TextFormat = new TextFormat("Open Sans",9,4738417,true,false,false,false,false,"center");

    public function renderer() {
      super();
    }

    public static function rectangle(s:*, x:int = 0, y:int = 0, w:int = 0, h:int = 0, rgb:int = 0, a:Number = 1) : * {
      if(!s) return;
      s.graphics.beginFill(rgb,a);
      s.graphics.drawRect(x,y,w,h);
      s.graphics.endFill();
      return s;
    }

    public static function outline(s:*, x:int = 0, y:int = 0, w:int = 0, h:int = 0, rgb:int = 0, a:Number = 1, t:int = 1) : * {
      if(!s) return;
      s.graphics.beginFill(rgb,a);
      s.graphics.drawRect(x,y,w - t,t);
      s.graphics.drawRect(x + w - t,y,t,h);
      s.graphics.drawRect(x,y + h - t,w - t,t);
      s.graphics.drawRect(x,y + t,t,h - t);
      s.graphics.endFill();
      return s;
    }

    public static function text(x:int = 0, y:int = 0, fmt:* = null, autosize:String = "", shadow:Boolean = false, str:String = "") : TextField {
      var tf:TextField = new TextField();
      if(shadow) tf.filters = [TEXT_SHADOW.clone()];

      if(typeof fmt == "string" && fmt == "-") fmt = TEXT_FORMAT_SMALL;
      else if(!fmt) fmt = TEXT_FORMAT_DEFAULT;

      tf.setTextFormat(fmt);
      tf.defaultTextFormat = fmt;
      if(autosize != "") tf.autoSize = autosize;
      tf.mouseEnabled = false;
      tf.x = x;
      tf.y = y;
      tf.text = str;
      return tf;
    }
  }
}
