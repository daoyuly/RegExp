#那些类库中使用的正则表达式

在js类库中很多正则是类库处理的重点内容，也是很多类库中的核心，比如在jquery，dom操作主要依靠正则。
这些正则都是这些优秀类库中的棵棵珍珠，体现了类库作者和众多开发人员的智慧和心血。我特意抽出这些正则，
一是为了充分学习理解正则及其使用；二是向这些精妙正则表达式的作者们致敬。


###angularjs （v1.3.9-local+sha.a3c3bf3）

- 查找格式 {123} 中数字

 > /\{\d+\}/g

```
message = prefix + template.replace(/\{\d+\}/g, function(match) {
         var index = +match.slice(1, -1), arg;
         if (index + 2 < templateArgs.length) {
           return toDebugString(templateArgs[index + 2]);
         }
         return match;
       });
```


- 查找/dfdfd/形式的正则表达式，主要是正对ngPattern指令，你可以用这个正则查找angularjs里面这种形式的正则表达式

> var REGEX_STRING_REGEXP = /^\/(.+)\/([a-z]*)$/;

```
console.log('begin');
var template = "/13423423dsfdsfsdf.$####.../";
template.replace(/^\/(.+)\/([a-z]*)$/, function(match) {
      console.log(match);
      return match;
});
```

- ISO 日期格式
 > var ISO_DATE_REGEXP = /\d{4}-[01]\d-[0-3]\dT[0-2]\d:[0-5]\d:[0-5]\d\.\d+([+-][0-2]\d:[0-5]\d|Z)/;

- url
> var URL_REGEXP = /^(ftp|http|https):\/\/(\w+:{0,1}\w*@)?(\S+)(:[0-9]+)?(\/|\/([\w#!:.?+=&%@!\-\/]))?$/;

- email
> var EMAIL_REGEXP = /^[a-z0-9!#$%&'*+\/=?^_`{|}~.-]+@[a-z0-9]([a-z0-9-]*[a-z0-9])?(\.[a-z0-9]([a-z0-9-]*[a-z0-9])?)*$/i;

- 数字
> var NUMBER_REGEXP = /^\s*(\-|\+)?(\d+|(\d*(\.\d*)))\s*$/;

- 日期 年月日 YYYY-MM-DD
> var DATE_REGEXP = /^(\d{4})-(\d{2})-(\d{2})$/;

- 日期+时间
> var DATETIMELOCAL_REGEXP = /^(\d{4})-(\d\d)-(\d\d)T(\d\d):(\d\d)(?::(\d\d)(\.\d{1,3})?)?$/;

- 日期+星期
> var WEEK_REGEXP = /^(\d{4})-W(\d\d)$/;

- 年份月份
> var MONTH_REGEXP = /^(\d{4})-(\d\d)$/;

- 时间格式
> var TIME_REGEXP = /^(\d\d):(\d\d)(?::(\d\d)(\.\d{1,3})?)?$/;

- 查找defalt关键字
> var DEFAULT_REGEXP = /(\s+|^)default(\s+|$)/;



