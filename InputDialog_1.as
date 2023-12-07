package InputPromptUI_fla {
  import _kiwi.Controls.TextInput;
  import adobe.utils.*;
  import flash.accessibility.*;
  import flash.desktop.*;
  import flash.display.*;
  import flash.errors.*;
  import flash.events.*;
  import flash.external.*;
  import flash.filters.*;
  import flash.geom.*;
  import flash.globalization.*;
  import flash.media.*;
  import flash.net.*;
  import flash.net.drm.*;
  import flash.printing.*;
  import flash.profiler.*;
  import flash.sampler.*;
  import flash.sensors.*;
  import flash.system.*;
  import flash.text.*;
  import flash.text.engine.*;
  import flash.text.ime.*;
  import flash.ui.*;
  import flash.utils.*;
  import flash.xml.*;

  [Embed(source="/_assets/assets.swf", symbol="InputPromptUI_fla.InputDialog_1")]
  public dynamic class InputDialog_1 extends MovieClip {
    public var background:MovieClip;
    public var okButton:BtnGreen;
    public var cancelButton:BtnGreen;
    public var nameTextInput:TextInput;
    public var okButton_image:btn_console_south;
    public var canceButton_image:btn_console_east;
    public var messageTextField:TextField;

    public function InputDialog_1() {
      super();
      addFrameScript(0, this.frame1, 10, this.frame11);
      this.__setProp_okButton_InputDialog_input_0();
      this.__setProp_nameTextInput_InputDialog_input_0();
      this.__setProp_cancelButton_InputDialog_input_0();
    }

    internal function __setProp_okButton_InputDialog_input_0() : * {
      try {
        this.okButton["componentInspectorSetting"] = true;
      } catch(e:Error) { }

      this.okButton.data = 0;
      this.okButton.enabled = false;
      this.okButton.label = "$OK";
      this.okButton.toggle = false;
      this.okButton.visible = true;

      try {
        this.okButton["componentInspectorSetting"] = false;
      } catch(e:Error) { }
    }

    internal function __setProp_nameTextInput_InputDialog_input_0() : * {
      try {
        this.nameTextInput["componentInspectorSetting"] = true;
      } catch(e:Error) { }

      this.nameTextInput.displayAsPassword = false;
      this.nameTextInput.editable = true;
      this.nameTextInput.enabled = true;
      this.nameTextInput.maxChars = 19;
      this.nameTextInput.restrict = "A-Za-z";
      this.nameTextInput.text = "";
      this.nameTextInput.visible = true;

      try {
        this.nameTextInput["componentInspectorSetting"] = false;
      } catch(e:Error) { }
    }

    internal function __setProp_cancelButton_InputDialog_input_0() : * {
      try {
        this.cancelButton["componentInspectorSetting"] = true;
      } catch(e:Error) { }

      this.cancelButton.data = "";
      this.cancelButton.enabled = true;
      this.cancelButton.label = "$Cancel";
      this.cancelButton.toggle = false;
      this.cancelButton.visible = true;

      try {
        this.cancelButton["componentInspectorSetting"] = false;
      } catch(e:Error) { }
    }

    internal function frame1() : * {
      stop();
    }

    internal function frame11() : * {
      stop();
    }
  }
}
