# get input files
mkdir input
wget https://github.com/shhuangmust/bigdata/raw/main/file1.txt > input/file1.txt
wget https://github.com/shhuangmust/bigdata/raw/main/file2.txt > input/file2.txt

# put input files to HDFS
hadoop fs -mkdir -p input
hdfs dfs -put ./input/* input

# run wordcount
hadoop jar $HADOOP_HOME/share/hadoop/mapreduce/sources/hadoop-mapreduce-examples-2.7.2-sources.jar org.apache.hadoop.examples.WordCount input output

# print the input files
# echo -e "\ninput file3.txt:"
# hdfs dfs -cat input/file3.txt

# echo -e "\ninput file4.txt:"
# hdfs dfs -cat input/file4.txt

# print the output of wordcount
echo -e "\nwordcount output:"
hdfs dfs -cat output/part-r-00000
