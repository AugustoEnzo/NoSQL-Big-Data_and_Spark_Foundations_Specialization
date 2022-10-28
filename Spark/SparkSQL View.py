import pyspark as spark
import pandas as pd

# Create a dataframe from a file
df = spark.read.json("people.json")

# Create a temp view
df.createTempView("people")

# Run SQL Query
spark.sql("SELECT * FROM people").show()

# Create a global view
df.createGlobalTempView("people")

# Run SQL Query
spark.sql("SELECT * FROM global_temp.people").show()

mtcars = pd.read_csv('mtcars.csv')
sdf = spark.createDataFrame(mtcars)

sdf.select('mpg').show(5)

car_counts = sdf.groupby(['cyl']).agg({"wt":"count"}).sort("count(wt)", ascending=False).show(5)

sdf.createTempView("cars")

spark.sql("SELECT cyl, COUNT(*) FROM cars GROUPBY cyl ORDER by 2 DESC").show()

spark.close()