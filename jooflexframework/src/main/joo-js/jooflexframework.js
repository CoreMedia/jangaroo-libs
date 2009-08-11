joo.classLoader.prepare(










"package mx.events",
[

"import flash.events.Event",""],







"public class CollectionEvent extends Event",function($jooPublic,$jooPrivate){with(mx.events)with($jooPublic)with($jooPrivate)return[












"import mx.core.mx_internal",





"mx_internal static const",{VERSION:"3.3.0.0"},












































"public static const",{COLLECTION_CHANGE:"collectionChange"},









































"public function CollectionEvent",function(type,bubbles,
cancelable,
kind,location,
oldLocation,items)
{if(arguments.length<7){if(arguments.length<6){if(arguments.length<5){if(arguments.length<4){if(arguments.length<3){if(arguments.length<2){bubbles=false;}cancelable=false;}kind=null;}location=-1;}oldLocation=-1;}items=null;}
this[$super](type,bubbles,cancelable);

this.kind=kind;
this.location=location;
this.oldLocation=oldLocation;
this.items=items?items:[];
},





















"public var",{kind: undefined},























"public var",{items: undefined},

















"public var",{location: undefined},












"public var",{oldLocation: undefined},










"override public function toString",function()
{
return this.formatToString("CollectionEvent","kind","location",
"oldLocation","type","bubbles",
"cancelable","eventPhase");
},










"override public function clone",function()
{
return new CollectionEvent(this.type,this.bubbles,this.cancelable,this.kind,this.location,this.oldLocation,this.items);
},
];},[]

);joo.classLoader.prepare(










"package mx.utils",
[

"import flash.utils.Dictionary",
"import flash.utils.getQualifiedClassName",

"import mx.collections.IList",""],








"public class ObjectUtil",function($jooPublic,$jooPrivate){with(mx.utils)with($jooPublic)with($jooPrivate)return[function(){joo.classLoader.init(ByteArray,XMLNode,IList,Dictionary);},












"import mx.core.mx_internal",





"mx_internal static const",{VERSION:"3.3.0.0"},





"private static var",{defaultToStringExcludes:function(){return(["password","credentials"]);}},








































"public static function compare",function(a,b,depth)
{if(arguments.length<3){depth=-1;}
return internalCompare(a,b,0,depth,new Dictionary(true));
},
















"public static function copy",function(value)
{
var buffer=new ByteArray();
buffer.writeObject(value);
buffer.position=0;
var result=buffer.readObject();
return result;
},



















"public static function isSimple",function(value)
{
var type=typeof(value);
switch(type)
{
case"number":
case"string":
case"boolean":
{
return true;
}

case"object":
{
return(is(value,Date))||(is(value,Array));
}
}

return false;
},














"public static function numericCompare",function(a,b)
{
if(isNaN(a)&&isNaN(b))
return 0;

if(isNaN(a))
return 1;

if(isNaN(b))
return-1;

if(a<b)
return-1;

if(a>b)
return 1;

return 0;
},

















"public static function stringCompare",function(a,b,
caseInsensitive)
{if(arguments.length<3){caseInsensitive=false;}
if(a==null&&b==null)
return 0;

if(a==null)
return 1;

if(b==null)
return-1;


if(caseInsensitive)
{
a=a.toLocaleLowerCase();
b=b.toLocaleLowerCase();
}

var result=a.localeCompare(b);

if(result<-1)
result=-1;
else if(result>1)
result=1;

return result;
},

















"public static function dateCompare",function(a,b)
{
if(a==null&&b==null)
return 0;

if(a==null)
return 1;

if(b==null)
return-1;

var na=a.getTime();
var nb=b.getTime();

if(na<nb)
return-1;

if(na>nb)
return 1;

return 0;
},











































































































































































"public static function toString",function(value,
namespaceURIs,
exclude)
{if(arguments.length<3){if(arguments.length<2){namespaceURIs=null;}exclude=null;}
if(exclude==null)
{
exclude=defaultToStringExcludes;
}

refCount=0;
return internalToString(value,0,null,namespaceURIs,exclude);
},






"private static function internalToString",function(value,
indent,
refs,
namespaceURIs,
exclude)
{if(arguments.length<5){if(arguments.length<4){if(arguments.length<3){if(arguments.length<2){indent=0;}refs=null;}namespaceURIs=null;}exclude=null;}
var str;
var type=value==null?"null":typeof(value);
switch(type)
{
case"boolean":
case"number":
{
return value.toString();
}

case"string":
{
return"\""+value.toString()+"\"";
}

case"object":
{
if(is(value,Date))
{
return value.toString();
}
else if(is(value,XMLNode))
{
return value.toString();
}
else if(is(value,Class))
{
return"("+getQualifiedClassName(value)+")";
}
else
{
var classInfo=getClassInfo(value,exclude,
{includeReadOnly:true,uris:namespaceURIs});

var properties=classInfo.properties;

str="("+classInfo.name+")";





if(refs==null)
refs=new Dictionary(true);


var id=refs[value];
if(id!=null)
{
str+="#"+id;
return str;
}

if(value!=null)
{
str+="#"+refCount.toString();
refs[value]=refCount;
refCount++;
}

var isArray=is(value,Array);
var isDict=is(value,Dictionary);
var prop;
indent+=2;


for(var j=0;j<properties.length;j++)
{
str=newline(str,indent);
prop=properties[j];

if(isArray)
str+="[";
else if(isDict)
str+="{";


if(isDict)
{

str+=internalToString(prop,indent,refs,
namespaceURIs,exclude);
}
else
{
str+=prop.toString();
}

if(isArray)
str+="] ";
else if(isDict)
str+="} = ";
else
str+=" = ";

try
{

str+=internalToString(value[prop],indent,refs,
namespaceURIs,exclude);
}
catch(e){if(is(e,Error))
{
















str+="?";
}}
}
indent-=2;
return str;
}
break;
}

case"xml":
{
return value.toString();
}

default:
{
return"("+type+")";
}
}

return"(unknown)";
},






"private static function newline",function(str,n)
{if(arguments.length<2){n=0;}
var result=str;
result+="\n";

for(var i=0;i<n;i++)
{
result+=" ";
}
return result;
},

"private static function internalCompare",function(a,b,
currentDepth,desiredDepth,
refs)
{
if(a==null&&b==null)
return 0;

if(a==null)
return 1;

if(b==null)
return-1;


var typeOfA=typeof(a);
var typeOfB=typeof(b);

var result=0;

if(typeOfA==typeOfB)
{
switch(typeOfA)
{
case"boolean":
{
result=numericCompare(Number(a),Number(b));
break;
}

case"number":
{
result=numericCompare(a,b);
break;
}

case"string":
{
result=stringCompare(a,b);
break;
}

case"object":
{
var newDepth=desiredDepth>0?desiredDepth-1:desiredDepth;









var aRef=refs[a];
var bRef=refs[b];

if(aRef&&!bRef)
return 1;
else if(bRef&&!aRef)
return-1;
else if(bRef&&aRef)
return 0;

refs[a]=true;
refs[b]=true;

if(desiredDepth!=-1&&(currentDepth>desiredDepth))
{


result=stringCompare(a.toString(),b.toString());
}
else if((is(a,Array))&&(is(b,Array)))
{
result=arrayCompare(a,b,currentDepth,desiredDepth,refs);
}
else if((is(a,Date))&&(is(b,Date)))
{
result=dateCompare(a,b);
}
else if((is(a,IList))&&(is(b,IList)))
{
result=listCompare(a,b,currentDepth,desiredDepth,refs);
}
else if((is(a,ByteArray))&&(is(b,ByteArray)))
{
result=byteArrayCompare(a,b);
}
else if(getQualifiedClassName(a)==getQualifiedClassName(b))
{
var aProps=getClassInfo(a).properties;
var bProps;



if(getQualifiedClassName(a)=="Object")
{
bProps=getClassInfo(b).properties;
result=arrayCompare(aProps,bProps,currentDepth,newDepth,refs);
}

if(result!=0)
{
return result;
}


var propName;
var aProp;
var bProp;
for(var i=0;i<aProps.length;i++)
{
propName=aProps[i];
aProp=a[propName];
bProp=b[propName];
result=internalCompare(aProp,bProp,currentDepth+1,newDepth,refs);
if(result!=0)
{
i=aProps.length;
}
}
}
else
{

return 1;
}
break;
}
}
}
else
{
return stringCompare(typeOfA,typeOfB);
}

return result;
},





































"public static function getClassInfo",function(obj,
excludes,
options)
{if(arguments.length<3){if(arguments.length<2){excludes=null;}options=null;}
var n;
var i;


if(options==null)
options={includeReadOnly:true,uris:null,includeTransient:true};

var result;
var propertyNames=[];
var cacheKey;

var className;
var classAlias;
var properties;
var prop;
var dynamic=false;
var metadataInfo;

if(typeof(obj)=="xml")
{
className="XML";
properties=obj.text();
if(properties.length())
propertyNames.push("*");
properties=obj.attributes();
}
else
{
var classInfo=DescribeTypeCache.describeType(obj).typeDescription;
className=classInfo["@name"].toString();
classAlias=classInfo["@alias"].toString();
dynamic=(classInfo["@isDynamic"].toString()=="true");


var numericIndex=false;
}


if(!dynamic)
{
cacheKey=getCacheKey(obj,excludes,options);
result=CLASS_INFO_CACHE[cacheKey];
if(result!=null)
return result;
}

result={};
result["name"]=className;
result["alias"]=classAlias;
result["properties"]=propertyNames;
result["dynamic"]=dynamic;
result["metadata"]=metadataInfo=recordMetadata(properties);

var excludeObject={};
if(excludes)
{
n=excludes.length;
for(i=0;i<n;i++)
{
excludeObject[excludes[i]]=1;
}
}


var isArray=(className=="Array");
var isDict=(className=="flash.utils::Dictionary");

if(isDict)
{



for(var key in obj)
{
propertyNames.push(key);
}
}
else if(dynamic)
{
for(var p in obj)
{
if(excludeObject[p]!=1)
{
if(isArray)
{
var pi=parseInt(p);
if(isNaN(pi))
propertyNames.push(new QName("",p));
else
propertyNames.push(pi);
}
else
{
propertyNames.push(new QName("",p));
}
}
}
numericIndex=isArray&&!isNaN(Number(p));
}

if(isArray||isDict||className=="Object")
{

}
else if(className=="XML")
{
n=properties.length();
for(i=0;i<n;i++)
{
p=properties[i].name();
if(excludeObject[p]!=1)
propertyNames.push(new QName("","@"+p));
}
}
else
{
n=properties.length();
var uris=options.uris;
var uri;
var qName;
for(i=0;i<n;i++)
{
prop=properties[i];
p=prop["@name"].toString();
uri=prop["@uri"].toString();

if(excludeObject[p]==1)
continue;

if(!options.includeTransient&&internalHasMetadata(metadataInfo,p,"Transient"))
continue;

if(uris!=null)
{
if(uris.length==1&&uris[0]=="*")
{
qName=new QName(uri,p);
try
{
obj[qName];
propertyNames.push();
}
catch(e){if(is(e,Error))
{

}}
}
else
{
for(var j=0;j<uris.length;j++)
{
uri=uris[j];
if(prop["@uri"].toString()==uri)
{
qName=new QName(uri,p);
try
{
obj[qName];
propertyNames.push(qName);
}
catch(e){if(is(e,Error))
{

}}
}
}
}
}
else if(uri.length==0)
{
qName=new QName(uri,p);
try
{
obj[qName];
propertyNames.push(qName);
}
catch(e){if(is(e,Error))
{

}}
}
}
}

propertyNames.sort(Array.CASEINSENSITIVE|
(numericIndex?Array.NUMERIC:0));




if(!isDict)
{


for(i=0;i<propertyNames.length-1;i++)
{


if(propertyNames[i].toString()==propertyNames[i+1].toString())
{
propertyNames.splice(i,1);
i--;
}
}
}


if(!dynamic)
{
cacheKey=getCacheKey(obj,excludes,options);
CLASS_INFO_CACHE[cacheKey]=result;
}

return result;
},













"public static function hasMetadata",function(obj,
propName,
metadataName,
excludes,
options)
{if(arguments.length<5){if(arguments.length<4){excludes=null;}options=null;}
var classInfo=getClassInfo(obj,excludes,options);
var metadataInfo=classInfo["metadata"];
return internalHasMetadata(metadataInfo,propName,metadataName);
},




"private static function internalHasMetadata",function(metadataInfo,propName,metadataName)
{
if(metadataInfo!=null)
{
var metadata=metadataInfo[propName];
if(metadata!=null)
{
if(metadata[metadataName]!=null)
return true;
}
}
return false;
},




"private static function recordMetadata",function(properties)
{
var result=null;

try
{
for(var $1 in properties)
{var prop=properties[$1];
var propName=prop.attribute("name").toString();
var metadataList=prop.metadata;

if(metadataList.length()>0)
{
if(result==null)
result={};

var metadata={};
result[propName]=metadata;

for(var $2 in metadataList)
{var md=metadataList[$2];
var mdName=md.attribute("name").toString();

var argsList=md.arg;
var value={};

for(var $3 in argsList)
{var arg=argsList[$3];
var argKey=arg.attribute("key").toString();
if(argKey!=null)
{
var argValue=arg.attribute("value").toString();
value[argKey]=argValue;
}
}

var existing=metadata[mdName];
if(existing!=null)
{
var existingArray;
if(is(existing,Array))
existingArray=existing;
else
existingArray=[];
existingArray.push(value);
existing=existingArray;
}
else
{
existing=value;
}
metadata[mdName]=existing;
}
}
}
}
catch(e){if(is(e,Error))
{
}}

return result;
},





"private static function getCacheKey",function(o,excludes,options)
{if(arguments.length<3){if(arguments.length<2){excludes=null;}options=null;}
var key=getQualifiedClassName(o);

if(excludes!=null)
{
for(var i=0;i<excludes.length;i++)
{
var excl=excludes[i];
if(excl!=null)
key+=excl;
}
}

if(options!=null)
{
for(var flag in options)
{
key+=flag;
var value=options[flag];
if(value!=null)
key+=value;
}
}
return key;
},




"private static function arrayCompare",function(a,b,
currentDepth,desiredDepth,
refs)
{
var result=0;

if(a.length!=b.length)
{
if(a.length<b.length)
result=-1;
else
result=1;
}
else
{
var key;
for(key in a)
{
if(b.hasOwnProperty(key))
{
result=internalCompare(a[key],b[key],currentDepth,
desiredDepth,refs);

if(result!=0)
return result;
}
else
{
return-1;
}
}

for(key in b)
{
if(!a.hasOwnProperty(key))
{
return 1;
}
}
}

return result;
},




"private static function byteArrayCompare",function(a,b)
{
var result=0;
if(a.length!=b.length)
{
if(a.length<b.length)
result=-1;
else
result=1;
}
else
{
a.position=0;
b.position=0;
for(var i=0;i<a.length;i++)
{
result=numericCompare(a.readByte(),b.readByte());
if(result!=0)
{
i=a.length;
}
}
}
return result;
},




"private static function listCompare",function(a,b,currentDepth,
desiredDepth,refs)
{
var result=0;

if(a.length!=b.length)
{
if(a.length<b.length)
result=-1;
else
result=1;
}
else
{
for(var i=0;i<a.length;i++)
{
result=internalCompare(a.getItemAt(i),b.getItemAt(i),
currentDepth+1,desiredDepth,refs);
if(result!=0)
{
i=a.length;
}
}
}

return result;
},




"private static var",{refCount:0},




"private static var",{CLASS_INFO_CACHE:function(){return({});}},
];},["compare","copy","isSimple","numericCompare","stringCompare","dateCompare","toString","getClassInfo","hasMetadata"]

);joo.classLoader.prepare(










"package mx.collections",
[

"import flash.events.IEventDispatcher",
"import mx.events.CollectionEvent",






""],



















"public interface IList extends IEventDispatcher",function($jooPublic,$jooPrivate){with(mx.collections)with($jooPublic)with($jooPrivate)return[















,













,













,


















,















,


























,











,











,














,











,
];},[]

);joo.classLoader.prepare(










"package mx.utils",
[""],








"public class ArrayUtil",function($jooPublic,$jooPrivate){with(mx.utils)with($jooPublic)with($jooPrivate)return[












"import mx.core.mx_internal",





"mx_internal static const",{VERSION:"3.3.0.0"},
























"public static function toArray",function(obj)
{
if(!obj)
return[];

else if(is(obj,Array))
return obj;

else
return[obj];
},













"public static function getItemIndex",function(item,source)
{
var n=source.length;
for(var i=0;i<n;i++)
{
if(source[i]===item)
return i;
}

return-1;
},
];},["toArray","getItemIndex"]

);joo.classLoader.prepare(










"package mx.utils",
[""],








"public class StringUtil",function($jooPublic,$jooPrivate){with(mx.utils)with($jooPublic)with($jooPrivate)return[












"import mx.core.mx_internal",





"mx_internal static const",{VERSION:"3.3.0.0"},

















"public static function trim",function(str)
{
if(str==null)return'';

var startIndex=0;
while(isWhitespace(str.charAt(startIndex)))
++startIndex;

var endIndex=str.length-1;
while(isWhitespace(str.charAt(endIndex)))
--endIndex;

if(endIndex>=startIndex)
return str.slice(startIndex,endIndex+1);
else
return"";
},












"public static function trimArrayElements",function(value,delimiter)
{
if(value!=""&&value!=null)
{
var items=value.split(delimiter);

var len=items.length;
for(var i=0;i<len;i++)
{
items[i]=StringUtil.trim(items[i]);
}

if(len>0)
{
value=items.join(delimiter);
}
}

return value;
},










"public static function isWhitespace",function(character)
{
switch(character)
{
case" ":
case"\t":
case"\r":
case"\n":
case"\f":
return true;

default:
return false;
}
},




































"public static function substitute",function(str)
{var rest=Array.prototype.slice.call(arguments,1);
if(str==null)return'';


var len=rest.length;
var args;
if(len==1&&is(rest[0],Array))
{
args=rest[0];
len=args.length;
}
else
{
args=rest;
}

for(var i=0;i<len;i++)
{
str=str.replace(new RegExp("\\{"+i+"\\}","g"),args[i]);
}

return str;
},
];},["trim","trimArrayElements","isWhitespace","substitute"]

);joo.classLoader.prepare(










"package mx.events",
[""],








"public final class CollectionEventKind",function($jooPublic,$jooPrivate){with(mx.events)with($jooPublic)with($jooPrivate)return[












"import mx.core.mx_internal",





"mx_internal static const",{VERSION:"3.3.0.0"},











"public static const",{ADD:"add"},






"public static const",{MOVE:"move"},





"public static const",{REFRESH:"refresh"},




"public static const",{REMOVE:"remove"},





"public static const",{REPLACE:"replace"},






"mx_internal static const",{EXPAND:"expand"},





"public static const",{RESET:"reset"},






"public static const",{UPDATE:"update"},
];},[]

);
