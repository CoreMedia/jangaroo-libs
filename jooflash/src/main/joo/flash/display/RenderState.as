package flash.display {
import flash.geom.Matrix;

import js.CanvasRenderingContext2D;

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
  
    //-------------------------------------------------------------------------------------------------
  
    public function reset():void {
      _context.setTransform(1.0, 0.0, 0.0, 1.0, 0.0, 0.0);
      _context.globalAlpha = 1;
  
      _context.clearRect(0, 0, _context.canvas.width, _context.canvas.height);
      _depth = 0;

      /**
       *     var canvas:HTMLCanvasElement = window.document.createElement("canvas") as HTMLCanvasElement;
           canvas.width = 1;
           canvas.height = 1;
           canvas.style.position = "absolute";
       
           this.context = CanvasRenderingContext2D(canvas.getContext("2d"));
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
  
    public function renderDisplayObject(displayObject:DisplayObject):void {
      _depth++;
  
      var matrix:Matrix = _matrices[_depth];
      matrix.copyFromAndConcat(displayObject.transform.matrix, _matrices[_depth - 1]);
      
      _context.setTransform(matrix.a, matrix.b, matrix.c, matrix.d, matrix.tx, matrix.ty);
      _context.globalAlpha = _alphas[_depth] = _alphas[_depth - 1] * displayObject.alpha;
  
      if (displayObject.mask == null) 
      {
        displayObject._render(this);
      } 
      else 
      {
        _context.save();
        displayObject.mask._render(this);
        displayObject._render(this);
        _context.restore();
      }
  
      _depth--;
    }
  }
}