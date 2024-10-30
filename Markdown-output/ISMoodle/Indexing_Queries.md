# Indexing Queries

GET \_search
{
  "query": {
    "match\_all": {}
  },
"from": 1,
"size": 50
}
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

GET \_search
{
  "query": {
    "match": {
      "courseid": 9 
    }
  },
"from": 1,
"size": 1000
}
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

GET \_search
{
  "query": {
    "wildcard": {
      "title": {
        "value": "\*.jpg",
        "boost": 2
        
    }
  }
}
}
\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*\*

GET /search2previewmoodle/\_settings

PUT /search2previewmoodle/\_settings
{
  "index" : {
    "number\_of\_replicas" : 0
  }
}
