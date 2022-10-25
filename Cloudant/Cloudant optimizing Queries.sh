curl - X POST $SERVERURL/employees/_index \
-H"Content-Type: application/json" \
-d'{
    "index": {
        "fields": ["firstname"]
    }
}'

curl -X POST $SERVERURL/employees/_index \
-H"Content-Type: application/json" \
-d'{
    "index": {
        "fields": ["firstname"]
    },
    "name": "firstname-index",
    "type": "json"
}'

curl -X POST $SERVERURL/employees/_index \
-H"Content-Type: application/json" \
-d{ "index": {},
    "type": "text"
}'