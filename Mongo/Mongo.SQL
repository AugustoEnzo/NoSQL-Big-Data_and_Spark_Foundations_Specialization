from pymongo import MongoClient
user = 'root'
password = 'MjQwOTgtcnNhbm5h'  -- CHANGE THIS TO THE PASSWORD YOU NOTED IN THE EARLIER EXCERCISE - 2
 host='localhost'
 create the connection url
 connecturl = "mongodb://{}:{}@{}:27017/?authSource=admin".format(user,password,host)


  connect to mongodb server
 print("Connecting to mongodb server")
 connection = MongoClient(connecturl)


  get database list
 print("Getting list of databases")
 dbs = connection.list_database_names()

  print the database names

 for db in dbs:
     print(db)
 print("Closing the connection to the mongodb server")


  close the server connecton
 connection.close()

 from pymongo import MongoClient
 user = 'root'
 password = 'MjQwOTgtcnNhbm5h'  CHANGE THIS TO THE PASSWORD YOU NOTED IN THE EARLIER EXCERCISE - 2
 host='localhost'
 create the connection url
 connecturl = "mongodb://{}:{}@{}:27017/?authSource=admin".format(user,password,host)


  connect to mongodb server
 print("Connecting to mongodb server")
 connection = MongoClient(connecturl)


  select the 'training' database

 db = connection.training

  select the 'python' collection

 collection = db.python


  create a sample document

 doc = {"lab":"Accessing mongodb using python", "Subject":"No SQL Databases"}

  insert a sample document

 print("Inserting a document into collection.")
 db.collection.insert_one(doc)

  query for all documents in 'training' database and 'python' collection

 docs = db.collection.find()

 print("Printing the documents in the collection.")

 for document in docs:
     print(document)

  close the server connecton
 print("Closing the connection.")
 connection.close()

 from pymongo import MongoClient
 user = 'root'
 password = 'MjQwOTgtcnNhbm5h'  CHANGE THIS TO THE PASSWORD YOU NOTED IN THE EARLIER EXCERCISE - 2
 host='localhost'
 create the connection url
 connecturl = "mongodb://{}:{}@{}:27017/?authSource=admin".format(user,password,host)


  connect to mongodb server
 print("Connecting to mongodb server")
 connection = MongoClient(connecturl)


  select the 'training' database

 db = connection.training

  select the 'python' collection

 collection = db.mongodb_glossary


  create documents

 doc1 = {"database":"a database contains collections"}
 doc2 = {"collection":"a collection stores the documents"}
 doc3 = {"document":"a document contains the data in the form or key value pairs."}


  insert documents
 print("Inserting documents into collection.")

 db.collection.insert_one(doc1)
 db.collection.insert_one(doc2)
 db.collection.insert_one(doc3)


  query for all documents in 'training' database and 'python' collection

 docs = db.collection.find()

 print("Printing the documents in the collection.")

 for document in docs:
     print(document)

  close the server connecton
 print("Closing the connection.")
 connection.close()

 db.languages.insert({"name":"java","type":"object oriented"})
 db.languages.insert({"name":"python","type":"general purpose"})
 db.languages.insert({"name":"scala","type":"functional"})
 db.languages.insert({"name":"c","type":"procedural"})
 db.languages.insert({"name":"c++","type":"object oriented"})

 db.languages.count()

 db.languages.findOne()

 db.languages.find()

 db.languages.find().limit(3)

 db.languages.find({"name":"python"})

 db.languages.find({"type":"object oriented"})

 db.languages.find({},{"name":1})

 db.languages.find({},{"name":0})

 db.languages.find({"type":"object oriented"},{"name":1})

 db.collection.updateMany({what documents to find},{$set:{what fields to set}})

 db.languages.updateMany({},{$set:{"description":"programming language"}})

 db.languages.updateMany({"name":"python"},{$set:{"creator":"Guido van Rossum"}})

 db.languages.updateMany({"type":"object oriented"},{$set:{"compiled":true}})

 db.languages.remove({"name":"scala"})

 db.languages.remove({"type":"object oriented"})

 db.languages.remove({})

 use training
 db.languages.insert({"name":"java","type":"object oriented"})
 db.languages.insert({"name":"python","type":"general purpose"})
 db.languages.insert({"name":"scala","type":"functional"})
 db.languages.insert({"name":"c","type":"procedural"})
 db.languages.insert({"name":"c++","type":"object oriented"})

 use training
 db.marks.insert({"name":"Ramesh","subject":"maths","marks":87})
 db.marks.insert({"name":"Ramesh","subject":"english","marks":59})
 db.marks.insert({"name":"Ramesh","subject":"science","marks":77})
 db.marks.insert({"name":"Rav","subject":"maths","marks":62})
 db.marks.insert({"name":"Rav","subject":"english","marks":83})
 db.marks.insert({"name":"Rav","subject":"science","marks":71})
 db.marks.insert({"name":"Alison","subject":"maths","marks":84})
 db.marks.insert({"name":"Alison","subject":"english","marks":82})
 db.marks.insert({"name":"Alison","subject":"science","marks":86})
 db.marks.insert({"name":"Steve","subject":"maths","marks":81})
 db.marks.insert({"name":"Steve","subject":"english","marks":89})
 db.marks.insert({"name":"Steve","subject":"science","marks":77})
 db.marks.insert({"name":"Jan","subject":"english","marks":0,"reason":"absent"})

 use training
 db.marks.aggregate([{"$limit":2}])

 db.marks.aggregate([{"$sort":{"marks":1}}])

 db.marks.aggregate([{"$sort":{"marks":-1}}])

 db.marks.aggregate([
 {"$sort":{"marks":-1}},
 {"$limit":2}
 ])

 db.marks.aggregate([
 {
     "$group":{
         "_id":"$subject",
         "average":{"$avg":"$marks"}
         }
 }
 ])

 db.marks.aggregate([
 {
     "$group":{
         "_id":"$name",
         "average":{"$avg":"$marks"}
         }
 },
 {
     "$sort":{"average":-1}
 },
 {
     "$limit":2
 }
 ])



db.movies.aggregate([
{
    "$match": {
        "year": { "$eq": 2007 }
    }
},
{
        "$group":{
            '_id':"$year",
            "avg_votes": { "$avg": "$Votes" }
            }
},
{
        "$sort": {
            "_id": 1
            }
}
])