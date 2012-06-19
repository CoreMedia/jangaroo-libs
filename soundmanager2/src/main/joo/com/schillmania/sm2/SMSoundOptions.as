package com.schillmania.sm2 {
public interface SMSoundOptions {

  function set autoLoad(autoLoad:Boolean):void;

  function set autoPlay(autoPlay:Boolean):void;

  // events:

  function set onbufferchange(listener:Function);

  function set ondataerror(listener:Function);

  function set onbeforefinishcomplete(listener:Function);

  function set onbeforefinish(listener:Function);

  function set onconnect(listener:Function);

  function set onfinish(listener:Function);

  function set onid3(listener:Function);

  function set onjustbeforefinish(listener:Function);

  function set onload(listener:Function);

  function set onpause(listener:Function);

  function set onplay(listener:Function);

  function set onresume(listener:Function);

  function set onstop(listener:Function);

  function set whileloading(listener:Function);

  function set whileplaying(listener:Function);

}
}