# run wordcount
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-2.7.2-sources.jar org.apache.hadoop.exa
mples.WordCount input output

# print the input files
echo -e "\ninput file3.txt:"
hdfs dfs -cat input/file3.txt

echo -e "\ninput file4.txt:"
hdfs dfs -cat input/file4.txt

# print the output of wordcount
echo -e "\nwordcount output:"
hdfs dfs -cat output/part-r-00000
