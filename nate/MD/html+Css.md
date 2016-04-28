* 选择器  
* 盒布局  
* 流  

块级元素  行排列  
级联元素  列排列  


CSS字体属性
```
字体大小：font-size: px/em/pt;（值使用数值即可）
字体样式：font-style: oblique;(偏斜体) italic;(斜体) normal;(正常)
字体行高：line-height: normal;(正常) 单位：PX、PD、EM
字体粗细：font-weight: bold;(粗体) lighter;(细体) normal;(正常)
字体变体：font-variant: small-caps;(小型大写字母) normal;(正常)
文字间距：letter-spacing: normal; 数值 pt/em/pt
文字对齐：text-align: justify;(两端对齐) left;(左对齐) right;(右对齐) center;(居中)
文字缩进：text-indent: 数值 px;
词间距：word-spacing: normal; 数值 px;
字体大小写：text-transform: capitalize;(首字母大写) uppercase;(大写) lowercase;(小写) none;(无)
字体修饰：text-decoration: underline;(下划线) overline;(上划线) line-through;(删除线) blink;(闪烁)
字体：font-family:”Courier New”, Courier, monospace, “Times New Roman”, Times, serif, Arial, 
```
CSS背景属性
```
背景颜色：background-color: #FFFFFF;
背景图片：background-image: url();
背景图片重复：background-repeat: no-repeat;
背景图片滚动：background-attachment: fixed;(固定) scroll;(滚动)
背景图片位置：background-position: left(水平) top(垂直);
简写方法： background:#000 url(..) repeat fixed left top;
```
区块属性
```
垂直对齐：vertical-align: baseline;(基线) sub;(下标) super;(下标) top; text-top; middle; bottom; text-bottom;
元素空格：white-space: pre;(保留) nowrap;(不换行)
显示：display:block;(块) inline;(内嵌) list-item;(列表项) run-in;(追加部分) compact;(紧凑) marker;(标记) 
table; inline-table; table-raw-group; table-header-group; table-footer-group; table-raw; table-column-group;
table-column; table-cell; table-caption;(表格标题)
```
方框属性
```
宽度：width: 数值 px;
高度：height: 数值 px;
外边距：margin: 1px 1px 1px 1px; 上右下左 简写：marign: 1px;
内边距：padding: 1px 1px 1px 1px; 上右下左 简写：padding:1px;
清除浮动：clear:left(左侧不运行浮动)/right(右侧不允许浮动)/both(左右不允许浮动)/inherit(继承父元素)
```
边框属性
```
边框样式：border-style: dotted;(点线) dashed;(虚线) solid; double;(双线) groove;(槽线) ridge;(脊状) inset;(凹陷) outset;
边框宽度：border-width: 数值 px;
边框颜色：border-color:#fffff;
简写方法：border：width style color; 
```
列表属性
```
列表类型：list-style-type: disc;(圆点) circle;(圆圈) square;(方块) decimal;(数字) lower-roman;(小罗码数字) upper-roman; lower-alpha; upper-alpha;
列表位置：list-style-position: outside;(外) inside(内);
列表图像：list-style-image: url(..);
```
定位属性
```
定位位置：Position: absolute; relative; static;
元素是否可见：visibility: inherit; visible; hidden;
内容溢出：overflow: visible; hidden; scroll; auto;
裁剪：clip: rect(12px,auto,12px,auto)
```