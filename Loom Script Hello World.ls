package

{

    import cocos2d.Cocos2DGame;

    import cocos2d.Cocos2D;

    import UI.Label;

 

 

    public class HelloWorld extends Cocos2DGame

    {

        override public function run():void

        {

            super.run();

 

            var label = new Label(“assets/Curse-hd.fnt”);

            label.text = “Hello World”;

            label.x = Cocos2D.getDisplayWidth()/2;

            label.y = Cocos2D.getDisplayHeight()/2;

            

            System.Console.print(“Hello World! printed to console”);

 

            //Gratuitous delegate example!

            layer.onTouchEnded += function(){

                label.text = “Touched”;

            }

            

            layer.addChild(label);

        }

    }

}
