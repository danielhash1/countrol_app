var y={title:"CSS3 Box-shadow",description:"Method of displaying an inner or outer shadow effect to elements",spec:"https://www.w3.org/TR/css3-background/#box-shadow",status:"cr",links:[{url:"https://developer.mozilla.org/En/CSS/-moz-box-shadow",title:"MDN Web Docs - box-shadow"},{url:"https://westciv.com/tools/boxshadows/index.html",title:"Live editor"},{url:"http://tests.themasta.com/blogstuff/boxshadowdemo.html",title:"Demo of various effects"},{url:"https://webplatform.github.io/docs/css/properties/box-shadow",title:"WebPlatform Docs"}],bugs:[{description:"Edge and IE up to 11 suppress box-shadow in tables with border-collapse:collapse. [test case](https://codepen.io/Fyrd/pen/oXVYyq), [workaround](https://codepen.io/ribeirobreno/pen/PopbqKo)"},{description:"Safari 6, iOS 6 and Android 2.3 default browser don't work with a 0px value for \"blur-radius\".\r\ne.g. `-webkit-box-shadow: 5px 1px 0px 1px #f04e29;`\r\ndoesn't work, but\r\n`-webkit-box-shadow: 5px 1px 1px 1px #f04e29`\r\ndoes."},{description:"iOS 8 has a bug where the box shadow disappears when zooming in a certain amount. [test case](https://jsfiddle.net/b6aaq57z/4/)"}],categories:["CSS3"],stats:{ie:{5.5:"n",6:"n",7:"n",8:"n",9:"y",10:"y",11:"y"},edge:{12:"y",13:"y",14:"y",15:"y",16:"y",17:"y",18:"y",79:"y",80:"y",81:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y",110:"y",111:"y",112:"y",113:"y",114:"y",115:"y",116:"y",117:"y",118:"y",119:"y",120:"y",121:"y",122:"y",123:"y",124:"y"},firefox:{2:"n",3:"n",3.5:"y x",3.6:"y x",4:"y",5:"y",6:"y",7:"y",8:"y",9:"y",10:"y",11:"y",12:"y",13:"y",14:"y",15:"y",16:"y",17:"y",18:"y",19:"y",20:"y",21:"y",22:"y",23:"y",24:"y",25:"y",26:"y",27:"y",28:"y",29:"y",30:"y",31:"y",32:"y",33:"y",34:"y",35:"y",36:"y",37:"y",38:"y",39:"y",40:"y",41:"y",42:"y",43:"y",44:"y",45:"y",46:"y",47:"y",48:"y",49:"y",50:"y",51:"y",52:"y",53:"y",54:"y",55:"y",56:"y",57:"y",58:"y",59:"y",60:"y",61:"y",62:"y",63:"y",64:"y",65:"y",66:"y",67:"y",68:"y",69:"y",70:"y",71:"y",72:"y",73:"y",74:"y",75:"y",76:"y",77:"y",78:"y",79:"y",80:"y",81:"y",82:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y",110:"y",111:"y",112:"y",113:"y",114:"y",115:"y",116:"y",117:"y",118:"y",119:"y",120:"y",121:"y",122:"y",123:"y",124:"y",125:"y",126:"y",127:"y",128:"y"},chrome:{4:"y x",5:"y x",6:"y x",7:"y x",8:"y x",9:"y x",10:"y",11:"y",12:"y",13:"y",14:"y",15:"y",16:"y",17:"y",18:"y",19:"y",20:"y",21:"y",22:"y",23:"y",24:"y",25:"y",26:"y",27:"y",28:"y",29:"y",30:"y",31:"y",32:"y",33:"y",34:"y",35:"y",36:"y",37:"y",38:"y",39:"y",40:"y",41:"y",42:"y",43:"y",44:"y",45:"y",46:"y",47:"y",48:"y",49:"y",50:"y",51:"y",52:"y",53:"y",54:"y",55:"y",56:"y",57:"y",58:"y",59:"y",60:"y",61:"y",62:"y",63:"y",64:"y",65:"y",66:"y",67:"y",68:"y",69:"y",70:"y",71:"y",72:"y",73:"y",74:"y",75:"y",76:"y",77:"y",78:"y",79:"y",80:"y",81:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y",110:"y",111:"y",112:"y",113:"y",114:"y",115:"y",116:"y",117:"y",118:"y",119:"y",120:"y",121:"y",122:"y",123:"y",124:"y",125:"y",126:"y",127:"y"},safari:{3.1:"a x #1",3.2:"a x #1",4:"a x #1",5:"y x",5.1:"y",6:"y",6.1:"y",7:"y",7.1:"y",8:"y",9:"y",9.1:"y",10:"y",10.1:"y",11:"y",11.1:"y",12:"y",12.1:"y",13:"y",13.1:"y",14:"y",14.1:"y",15:"y",15.1:"y","15.2-15.3":"y",15.4:"y",15.5:"y",15.6:"y","16.0":"y",16.1:"y",16.2:"y",16.3:"y",16.4:"y",16.5:"y",16.6:"y","17.0":"y",17.1:"y",17.2:"y",17.3:"y",17.4:"y",17.5:"y",TP:"y"},opera:{9:"n","9.5-9.6":"n","10.0-10.1":"n",10.5:"y",10.6:"y",11:"y",11.1:"y",11.5:"y",11.6:"y",12:"y",12.1:"y",15:"y",16:"y",17:"y",18:"y",19:"y",20:"y",21:"y",22:"y",23:"y",24:"y",25:"y",26:"y",27:"y",28:"y",29:"y",30:"y",31:"y",32:"y",33:"y",34:"y",35:"y",36:"y",37:"y",38:"y",39:"y",40:"y",41:"y",42:"y",43:"y",44:"y",45:"y",46:"y",47:"y",48:"y",49:"y",50:"y",51:"y",52:"y",53:"y",54:"y",55:"y",56:"y",57:"y",58:"y",60:"y",62:"y",63:"y",64:"y",65:"y",66:"y",67:"y",68:"y",69:"y",70:"y",71:"y",72:"y",73:"y",74:"y",75:"y",76:"y",77:"y",78:"y",79:"y",80:"y",81:"y",82:"y",83:"y",84:"y",85:"y",86:"y",87:"y",88:"y",89:"y",90:"y",91:"y",92:"y",93:"y",94:"y",95:"y",96:"y",97:"y",98:"y",99:"y",100:"y",101:"y",102:"y",103:"y",104:"y",105:"y",106:"y",107:"y",108:"y",109:"y"},ios_saf:{3.2:"a x #1","4.0-4.1":"y x","4.2-4.3":"y x","5.0-5.1":"y","6.0-6.1":"y","7.0-7.1":"y",8:"y","8.1-8.4":"y","9.0-9.2":"y",9.3:"y","10.0-10.2":"y",10.3:"y","11.0-11.2":"y","11.3-11.4":"y","12.0-12.1":"y","12.2-12.5":"y","13.0-13.1":"y",13.2:"y",13.3:"y","13.4-13.7":"y","14.0-14.4":"y","14.5-14.8":"y","15.0-15.1":"y","15.2-15.3":"y",15.4:"y",15.5:"y","15.6-15.8":"y","16.0":"y",16.1:"y",16.2:"y",16.3:"y",16.4:"y",16.5:"y","16.6-16.7":"y","17.0":"y",17.1:"y",17.2:"y",17.3:"y",17.4:"y",17.5:"y"},op_mini:{all:"n"},android:{2.1:"a x #1",2.2:"a x #1",2.3:"a x #1",3:"a x #1",4:"y",4.1:"y","4.2-4.3":"y",4.4:"y","4.4.3-4.4.4":"y",124:"y"},bb:{7:"y x",10:"y"},op_mob:{10:"n",11:"y",11.1:"y",11.5:"y",12:"y",12.1:"y",80:"y"},and_chr:{124:"y"},and_ff:{125:"y"},ie_mob:{10:"y",11:"y"},and_uc:{15.5:"y"},samsung:{4:"y","5.0-5.4":"y","6.2-6.4":"y","7.2-7.4":"y",8.2:"y",9.2:"y",10.1:"y","11.1-11.2":"y","12.0":"y","13.0":"y","14.0":"y","15.0":"y","16.0":"y","17.0":"y","18.0":"y","19.0":"y",20:"y",21:"y",22:"y",23:"y",24:"y"},and_qq:{14.9:"y"},baidu:{13.52:"y"},kaios:{2.5:"y","3.0-3.1":"y"}},notes:'Can be partially emulated in older IE versions using the non-standard "shadow" filter.',notes_by_num:{1:'Partial support in Safari, iOS Safari and Android Browser refers to missing "inset", blur radius value, and multiple shadow support.'},usage_perc_y:98.29,usage_perc_a:0,ucprefix:false,parent:"",keywords:"box-shadows,boxshadows,box shadow,shaow",chrome_id:"",shown:true};export{y as default};
