# API queries

### wildcard search for title

``` vb
GET _search
{
"query": {
"wildcard": {
"title": {
"value": "*.pdf"
}}}
, "size": 10000
}
```

### Exact match of areaid

``` vb
GET _search
{
"query": {
"match": {
"areaid": "mod_resource-activity"
}}}
```

### Boolean search title and filetext

``` vb
GET /_search
{
  "query": {
    "bool": {
      "should": [
        {
          "wildcard": {
            "title": "*.pdf"
          }
        },
        {
          "wildcard": {
            "filetext": "*"
          }
        }
      ]
    }
  }
}
```
