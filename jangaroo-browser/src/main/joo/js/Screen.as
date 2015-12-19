package js{
[Native("Screen")]
public interface Screen {
  function get top() : int;

  function get left() : int;

  function get width() : int;

  function get height() : int;

  function get pixelDepth() : int;

  function get availTop() : int;

  function get availLeft() : int;

  function get availWidth() : int;

  function get availHeight() : int;

  function get colorDepth() : int;
}
}