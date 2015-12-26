#那些类库中使用的正则表达式。

在js类库中很多正则是类库处理的重点内容，也是很多类库中的核心，比如在jquery，dom操作主要依靠正则。
这些正则都是这些优秀类库中的棵棵珍珠，体现了类库作者和众多开发人员的智慧和心血。我特意抽出这些正则，
一是为了充分学习理解正则及其使用；二是向这些精妙正则表达式的作者们致敬。


###angularjs （v1.3.9-local+sha.a3c3bf3）

1. 查找格式 {123} 中数字

   /\{\d+\}/g

```
message = prefix + template.replace(/\{\d+\}/g, function(match) {
         var index = +match.slice(1, -1), arg;

         if (index + 2 < templateArgs.length) {
           return toDebugString(templateArgs[index + 2]);
         }
         return match;
       });
```


2. demo

> var REGEX_STRING_REGEXP = /^\/(.+)\/([a-z]*)$/;