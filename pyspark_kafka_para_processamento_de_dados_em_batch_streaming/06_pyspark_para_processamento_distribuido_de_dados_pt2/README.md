# Execução dos scripts do Capítulo 6:

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-14-filter.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-15-filter2.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-16-filter-null.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-17-drop-column.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-18-drop-null.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-19-explode-array-map.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-20-explode-nested-array.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-21-loop.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-22-pivot.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-23-split-function.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-24-collect.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-25-operadores.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-26-withcolumn.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-27-column-operations.py

docker exec dsa-pyspark-master spark-submit --deploy-mode client ./apps/dsa-p2-28-maptype-dataframe-column.py