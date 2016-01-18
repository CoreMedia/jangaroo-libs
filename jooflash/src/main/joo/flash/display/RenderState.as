package flash.display {
import flash.geom.Matrix;
import flash.geom.Rectangle;

import js.CanvasRenderingContext2D;
import js.HTMLCanvasElement;

public class RenderState {
    private var _context:CanvasRenderingContext2D ;
  
    private var _matrices:Vector.<Matrix>;
    private var _alphas:Vector.<Number>;
  
    private var _depth:int;


  public function RenderState(context:CanvasRenderingContext2D) {
    _context = context;

    _matrices = new Vector.<Matrix>();
    _alphas = new Vector.<Number>();
    _depth = 0;

    for(var i:int = 0; i < 100; i++) {
      _matrices.push(new Matrix());
      _alphas.push(1.0);
    }
  }

  public static function fromCanvasRenderingContext2D(context:CanvasRenderingContext2D):RenderState {
    return new RenderState(context);
  }
  
    //-------------------------------------------------------------------------------------------------
    //-------------------------------------------------------------------------------------------------
  
    public function get context():CanvasRenderingContext2D {
      return _context;
    }

    public function set context(value:CanvasRenderingContext2D):void {
      _context = value;
    }

//-------------------------------------------------------------------------------------------------
  
    public function reset():void {
      resetContext(_context);
      _depth = 0;

    }

  public static function resetContext(context:CanvasRenderingContext2D):void {
    context.setTransform(1, 0, 0, 1, 0, 0);
    context.globalAlpha = 1;
    context.clearRect(0, 0, context.canvas.width, context.canvas.height);
    /**
         // switch to Flash defaults:
         this.context.beginPath();
         this.context.moveTo(0, 0);
         this.context.lineWidth = 1;
         this.context.lineCap = CapsStyle.ROUND;
         this.context.lineJoin = JointStyle.ROUND;
         this.context.miterLimit = 3;
     
     */
  }
  
    //-------------------------------------------------------------------------------------------------
  
    public function translate(tx:Number, ty:Number):void {
      _matrices[0].tx = tx;
      _matrices[0].ty = ty;
    }

    public function renderDisplayObject(displayObject:DisplayObject):void {
      _depth++;
  
      var matrix:Matrix = currentTransformation();
      matrix.copyFromAndConcat(displayObject._transformationMatrix, _matrices[_depth - 1]);
      displayObject._clearTransformChanged(); // we will use the updated transformation matrix for rendering!
      
      _context.setTransform(matrix.a, matrix.b, matrix.c, matrix.d, matrix.tx, matrix.ty);

      // TODO: why not let the context aggregate transformations, like so:
      //var matrix:Matrix = displayObject._transformationMatrix;
      //_context.save();
      //_context.transform(matrix.a, matrix.b, matrix.c, matrix.d, matrix.tx, matrix.ty);
      // END TODO: plus always restore context afterwards!

      _context.globalAlpha = _alphas[_depth] = _alphas[_depth - 1] * displayObject.alpha;
  
      if (displayObject.mask == null) {
        displayObject._render(this);
      } else {
        _context.save();
        displayObject.mask._render(this);
        displayObject._render(this);
        _context.restore();
      }
      if (window.showBounds) {
        debugBounds(displayObject);
      }
      if (window.dumpDisplayList) {
        dump(displayObject);
      }
      _depth--;
    }

  internal function currentTransformation():Matrix {
    return _matrices[_depth];
  }

  private function debugBounds(displayObject:DisplayObject):void {
    var isMouseOverTarget:Boolean = displayObject === displayObject.stage._mouseOverTarget;
    if (!isMouseOverTarget && typeof window.showBounds === 'function' && !(displayObject instanceof window.showBounds)) {
      return;
    }
    _context.save();
    _context.setTransform(1, 0, 0, 1, 0, 0);
    _context.lineWidth = 1;
    _context.strokeStyle = isMouseOverTarget ?
            "green" :
            displayObject['updateContainerElement'] /* would create a cycle: instanceof DisplayObjectContainer */ ?
                    "red" :
                    "blue";
    var bounds:Rectangle = displayObject.getBounds(displayObject.stage);
    _context.strokeRect(bounds.x, bounds.y, bounds.width, bounds.height);
    if (displayObject['constructor'] === window.showBounds) {
      return;
    }
    _context.textAlign = "start";
    _context.textBaseline = "bottom";
    _context.fillText(displayObject['constructor'].$class.toString(), bounds.x, bounds.y + bounds.height);
    _context.restore();
  }

  private function dump(displayObject:DisplayObject):void {
    var msg:Array = [];
    for (var i:int = 0; i < _depth; i++) {
      msg.push(" ");
    }
    var bounds:Rectangle = displayObject.getBounds(displayObject.stage);
    msg.push(displayObject['constructor'].$class.toString(), ":", bounds);
    trace("WARN", msg.join(""));
  }

  public static function transformBounds(x:Number, y:Number, width:Number, height:Number, matrix:Matrix,
                                         returnRectangle:Rectangle = null):Rectangle {
    if (returnRectangle == null) {
      returnRectangle = new Rectangle();
    }
    if (!matrix) {
      returnRectangle.x = x;
      returnRectangle.y = y;
      returnRectangle.width = width;
      returnRectangle.height = height;
    } else {
      var x_r:Number = x + width;
      var y_b:Number = y + height;
      var x1:Number = matrix.a * x   + matrix.c * y;
      var y1:Number = matrix.b * x   + matrix.d * y;
      var x2:Number = matrix.a * x_r + matrix.c * y;
      var y2:Number = matrix.b * x_r + matrix.d * y;
      var x3:Number = matrix.a * x   + matrix.c * y_b;
      var y3:Number = matrix.b * x   + matrix.d * y_b;
      var x4:Number = matrix.a * x_r + matrix.c * y_b;
      var y4:Number = matrix.b * x_r + matrix.d * y_b;

      var left:Number   = Math.min(x1, x2, x3, x4);
      var top:Number    = Math.min(y1, y2, y3, y4);
      var right:Number  = Math.max(x1, x2, x3, x4);
      var bottom:Number = Math.max(y1, y2, y3, y4);

      returnRectangle.x = left + matrix.tx;
      returnRectangle.y = top + matrix.ty;
      returnRectangle.width = right - left;
      returnRectangle.height = bottom - top;
    }
    return returnRectangle;  
  }

  public static function unite(rectangle:Rectangle, uniteWith:Rectangle):void {
    if (uniteWith.width === 0 || uniteWith.height === 0) {
      return;
    }
    if (rectangle.width === 0 || rectangle.height === 0) {
      rectangle.x = uniteWith.x;
      rectangle.y = uniteWith.y;
      rectangle.width = uniteWith.width;
      rectangle.height = uniteWith.height;
      return;
    }
    var right:Number = rectangle.right;
    var bottom:Number = rectangle.bottom;
    rectangle.x = Math.min(rectangle.x, uniteWith.x);
    rectangle.y = Math.min(rectangle.y, uniteWith.y);
    rectangle.width = Math.max(right, uniteWith.right) - rectangle.x;
    rectangle.height = Math.max(bottom, uniteWith.bottom) - rectangle.y;
  }

  public static function createCanvasContext2D(width:Number = NaN,  height:Number = NaN):CanvasRenderingContext2D {
    var canvas:HTMLCanvasElement = HTMLCanvasElement(window.document.createElement("CANVAS"));
    var context:CanvasRenderingContext2D = CanvasRenderingContext2D(canvas.getContext("2d"));
    if (!isNaN(width) && !isNaN(height)) {
      resizeAndReset(context, width, height);
    }
    return context;
  }

  public static function resizeAndReset(context:CanvasRenderingContext2D, width:Number, height:Number):void {
    var intWidth:int = Math.ceil(width);
    var intHeight:int = Math.ceil(height);
    var canvas:HTMLCanvasElement = context.canvas;
    if (canvas.width === intWidth && canvas.height === intHeight) {
      resetContext(context);
    } else {
      // changing the size resets context automatically:
      canvas.width = intWidth;
      canvas.height = intHeight;
    }
  }

}
}