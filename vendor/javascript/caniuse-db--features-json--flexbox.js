var y={title:"CSS Flexible Box Layout Module",description:"Method of positioning elements in horizontal or vertical stacks. Support includes all properties prefixed with `flex`, as well as `display: flex`, `display: inline-flex`, `align-content`, `align-items`, `align-self`, `justify-content` and `order`.",spec:"https://www.w3.org/TR/css3-flexbox/",status:"cr",links:[{url:"https://bennettfeely.com/flexplorer/",title:"Flexbox CSS generator"},{url:"https://www.adobe.com/devnet/html5/articles/working-with-flexbox-the-new-spec.html",title:"Article on using the latest spec"},{url:"https://dev.opera.com/articles/view/advanced-cross-browser-flexbox/",title:"Tutorial on cross-browser support"},{url:"https://philipwalton.github.io/solved-by-flexbox/",title:"Examples on how to solve common layout problems with flexbox"},{url:"https://css-tricks.com/snippets/css/a-guide-to-flexbox/",title:"A Complete Guide to Flexbox"},{url:"https://the-echoplex.net/flexyboxes/",title:"Flexbox playground and code generator"},{url:"https://github.com/philipwalton/flexbugs",title:"Flexbugs: Repo for flexbox bugs"},{url:"https://github.com/10up/flexibility/",title:"10up Open Sources IE 8 and 9 Support for Flexbox"},{url:"https://github.com/vadimyer/ecligrid",title:"Ecligrid - Mobile first flexbox grid system"},{url:"https://mastery.games/post/the-difference-between-width-and-flex-basis/",title:"The Difference Between Width and Flex-Basis"}],bugs:[{description:"[Flexbugs](https://github.com/philipwalton/flexbugs): community-curated list of flexbox issues and cross-browser workarounds for them"},{description:"In IE10 the default value for `flex` is `0 0 auto` rather than `0 1 auto` as defined in the latest spec."},{description:"In Safari 10.1 and below, the height of (non flex) children are not recognized in percentages. However other browsers recognize and scale the children based on percentage heights. Fixed in all versions > 10.1 ([See bug](https://bugs.webkit.org/show_bug.cgi?id=137730)) The bug also appeared in Chrome but was fixed in [Chrome 51](https://bugs.chromium.org/p/chromium/issues/detail?id=341310)"},{description:"Firefox 51 and below does not support [Flexbox in button elements](https://bugzilla.mozilla.org/show_bug.cgi?id=984869#c2). Fixed in version 52."},{description:"IE 11 does not vertically align items correctly when `min-height` is used [see bug](https://connect.microsoft.com/IE/feedback/details/816293/ie11-flexbox-with-min-height-not-vertically-aligning-with-align-items-center)"},{description:"In IE10 and IE11, containers with `display: flex` and `flex-direction: column` will not properly calculate their flexed childrens' sizes if the container has `min-height` but no explicit `height` property. [See bug](https://web.archive.org/web/20170312223506/https://connect.microsoft.com/IE/feedback/details/802625/min-height-and-flexbox-flex-direction-column-dont-work-together-in-ie-10-11-preview)."},{description:"IE 11 requires a unit to be added to the third argument, the flex-basis property [see MSFT documentation](https://docs.microsoft.com/en-us/previous-versions/windows/internet-explorer/ie-developer/dev-guides/hh673531%28v%3dvs.85%29#setting-the-flexibility-of-a-child-element)"},{description:"Safari 10 and below uses min/max width/height declarations for actually rendering the size of flex items, but it ignores those values when calculating how many items should be on a single line of a multi-line flex container. Instead, it simply uses the item's flex-basis value, or its width if the flex basis is set to auto. [see bug](https://bugs.webkit.org/show_bug.cgi?id=136041). Fixed in all versions > 10."},{description:"The space-evenly value of the justify-content property, as described in the [CSS Box Alignment Module Level 3](https://www.w3.org/TR/css-align-3/#distribution-values) is only supported by some browsers."}],categories:["CSS3"],stats:{ie:{5.5:"n",6:"n",7:"n",8:"n",9:"n",10:"a x #2 #4",11:"a #4"},edge:{12:"y",13:"y",14:"y",15:"y",16:"y",17:"y",18:"y",79:"y",80:"y",81:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y",110:"y",111:"y",112:"y",113:"y",114:"y",115:"y",116:"y",117:"y",118:"y",119:"y",120:"y",121:"y",122:"y",123:"y",124:"y"},firefox:{2:"a x #1",3:"a x #1",3.5:"a x #1",3.6:"a x #1",4:"a x #1",5:"a x #1",6:"a x #1",7:"a x #1",8:"a x #1",9:"a x #1",10:"a x #1",11:"a x #1",12:"a x #1",13:"a x #1",14:"a x #1",15:"a x #1",16:"a x #1",17:"a x #1",18:"a x #1",19:"a x #1",20:"a x #1",21:"a x #1",22:"a #3",23:"a #3",24:"a #3",25:"a #3",26:"a #3",27:"a #3",28:"y",29:"y",30:"y",31:"y",32:"y",33:"y",34:"y",35:"y",36:"y",37:"y",38:"y",39:"y",40:"y",41:"y",42:"y",43:"y",44:"y",45:"y",46:"y",47:"y",48:"y",49:"y",50:"y",51:"y",52:"y",53:"y",54:"y",55:"y",56:"y",57:"y",58:"y",59:"y",60:"y",61:"y",62:"y",63:"y",64:"y",65:"y",66:"y",67:"y",68:"y",69:"y",70:"y",71:"y",72:"y",73:"y",74:"y",75:"y",76:"y",77:"y",78:"y",79:"y",80:"y",81:"y",82:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y",110:"y",111:"y",112:"y",113:"y",114:"y",115:"y",116:"y",117:"y",118:"y",119:"y",120:"y",121:"y",122:"y",123:"y",124:"y",125:"y",126:"y",127:"y",128:"y"},chrome:{4:"a x #1",5:"a x #1",6:"a x #1",7:"a x #1",8:"a x #1",9:"a x #1",10:"a x #1",11:"a x #1",12:"a x #1",13:"a x #1",14:"a x #1",15:"a x #1",16:"a x #1",17:"a x #1",18:"a x #1",19:"a x #1",20:"a x #1",21:"y x",22:"y x",23:"y x",24:"y x",25:"y x",26:"y x",27:"y x",28:"y x",29:"y",30:"y",31:"y",32:"y",33:"y",34:"y",35:"y",36:"y",37:"y",38:"y",39:"y",40:"y",41:"y",42:"y",43:"y",44:"y",45:"y",46:"y",47:"y",48:"y",49:"y",50:"y",51:"y",52:"y",53:"y",54:"y",55:"y",56:"y",57:"y",58:"y",59:"y",60:"y",61:"y",62:"y",63:"y",64:"y",65:"y",66:"y",67:"y",68:"y",69:"y",70:"y",71:"y",72:"y",73:"y",74:"y",75:"y",76:"y",77:"y",78:"y",79:"y",80:"y",81:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y",110:"y",111:"y",112:"y",113:"y",114:"y",115:"y",116:"y",117:"y",118:"y",119:"y",120:"y",121:"y",122:"y",123:"y",124:"y",125:"y",126:"y",127:"y"},safari:{3.1:"a x #1",3.2:"a x #1",4:"a x #1",5:"a x #1",5.1:"a x #1",6:"a x #1",6.1:"y x",7:"y x",7.1:"y x",8:"y x",9:"y",9.1:"y",10:"y",10.1:"y",11:"y",11.1:"y",12:"y",12.1:"y",13:"y",13.1:"y",14:"y",14.1:"y",15:"y",15.1:"y","15.2-15.3":"y",15.4:"y",15.5:"y",15.6:"y","16.0":"y",16.1:"y",16.2:"y",16.3:"y",16.4:"y",16.5:"y",16.6:"y","17.0":"y",17.1:"y",17.2:"y",17.3:"y",17.4:"y",17.5:"y",TP:"y"},opera:{9:"n","9.5-9.6":"n","10.0-10.1":"n",10.5:"n",10.6:"n",11:"n",11.1:"n",11.5:"n",11.6:"n",12:"n",12.1:"y",15:"y x",16:"y x",17:"y",18:"y",19:"y",20:"y",21:"y",22:"y",23:"y",24:"y",25:"y",26:"y",27:"y",28:"y",29:"y",30:"y",31:"y",32:"y",33:"y",34:"y",35:"y",36:"y",37:"y",38:"y",39:"y",40:"y",41:"y",42:"y",43:"y",44:"y",45:"y",46:"y",47:"y",48:"y",49:"y",50:"y",51:"y",52:"y",53:"y",54:"y",55:"y",56:"y",57:"y",58:"y",60:"y",62:"y",63:"y",64:"y",65:"y",66:"y",67:"y",68:"y",69:"y",70:"y",71:"y",72:"y",73:"y",74:"y",75:"y",76:"y",77:"y",78:"y",79:"y",80:"y",81:"y",82:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y"},ios_saf:{3.2:"a x #1","4.0-4.1":"a x #1","4.2-4.3":"a x #1","5.0-5.1":"a x #1","6.0-6.1":"a x #1","7.0-7.1":"y x",8:"y x","8.1-8.4":"y x","9.0-9.2":"y",9.3:"y","10.0-10.2":"y",10.3:"y","11.0-11.2":"y","11.3-11.4":"y","12.0-12.1":"y","12.2-12.5":"y","13.0-13.1":"y",13.2:"y",13.3:"y","13.4-13.7":"y","14.0-14.4":"y","14.5-14.8":"y","15.0-15.1":"y","15.2-15.3":"y",15.4:"y",15.5:"y","15.6-15.8":"y","16.0":"y",16.1:"y",16.2:"y",16.3:"y",16.4:"y",16.5:"y","16.6-16.7":"y","17.0":"y",17.1:"y",17.2:"y",17.3:"y",17.4:"y",17.5:"y"},op_mini:{all:"y"},android:{2.1:"a x #1",2.2:"a x #1",2.3:"a x #1",3:"a x #1",4:"a x #1",4.1:"a x #1","4.2-4.3":"a x #1",4.4:"y","4.4.3-4.4.4":"y",124:"y"},bb:{7:"a x #1",10:"y"},op_mob:{10:"n",11:"n",11.1:"n",11.5:"n",12:"n",12.1:"y",80:"y"},and_chr:{124:"y"},and_ff:{125:"y"},ie_mob:{10:"a x #2",11:"y"},and_uc:{15.5:"y"},samsung:{4:"y","5.0-5.4":"y","6.2-6.4":"y","7.2-7.4":"y",8.2:"y",9.2:"y",10.1:"y","11.1-11.2":"y","12.0":"y","13.0":"y","14.0":"y","15.0":"y","16.0":"y","17.0":"y","18.0":"y","19.0":"y",20:"y",21:"y",22:"y",23:"y",24:"y"},and_qq:{14.9:"y"},baidu:{13.52:"y"},kaios:{2.5:"y","3.0-3.1":"y"}},notes:"Most partial support refers to supporting an [older version](https://www.w3.org/TR/2009/WD-css3-flexbox-20090723/) of the specification or an [older syntax](https://www.w3.org/TR/2012/WD-css3-flexbox-20120322/).",notes_by_num:{1:"Only supports the [old flexbox](https://www.w3.org/TR/2009/WD-css3-flexbox-20090723) specification and does not support wrapping.",2:"Only supports the [2012 syntax](https://www.w3.org/TR/2012/WD-css3-flexbox-20120322/)",3:"Does not support flex-wrap, flex-flow or align-content properties",4:"Partial support is due to large amount of bugs present (see known issues)"},usage_perc_y:97.78,usage_perc_a:.54,ucprefix:false,parent:"",keywords:"flex-box,displayflex,flex-direction,flex-wrap,flex-flow,flex-grow,flex-shrink,flex-basis,display:flex,justify-content:space-between,justify-content:space-around,align-content:space-between,align-content:space-around,space-between",chrome_id:"4837301406400512",shown:true};export{y as default};

