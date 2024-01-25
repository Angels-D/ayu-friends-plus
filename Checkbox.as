package {
  import flash.display.Sprite;
  import flash.events.MouseEvent;

  public class Checkbox extends Sprite {
    private var isChecked:Boolean = false;
    // public var friends:Friends;

    public function Checkbox() {
      this.buttonMode = true; // Makes the sprite behave like a button
      this.mouseChildren = false; // Prevents mouse events from being dispatched by the children of this object
      this.drawCheckbox();
      this.addEventListener(MouseEvent.CLICK, toggleCheckbox);

      // If the config file has a checked value, use it
      // this.checked = friends.checked;
    }

    private function drawCheckbox():void {
      this.graphics.clear();

      // Draw checkbox outline
      this.graphics.lineStyle(1, 0x0f0e1a);
      this.graphics.drawRect(0, 0, 15, 15);

      // Draw checkbox interior gray
      this.graphics.beginFill(isChecked ? 0x1a1b30 : 0xfffefe);
      this.graphics.drawRect(1, 1, 13, 13);
      this.graphics.endFill();
    }

    private function toggleCheckbox(event:MouseEvent):void {
      isChecked = !isChecked;

      abi.cfg["checked"] = isChecked;
      abi.configWrite("checked");

      drawCheckbox();
    }

    public function get checked():Boolean {
      return isChecked;
    }

    public function set checked(value:Boolean):void {
      isChecked = value;
      drawCheckbox();
    }
  }
}
