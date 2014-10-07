# script to parse the xml files in parallel, using each of the nodes.
# This method is scalable, albeit without the benefits of job tracking
# outside of the Hadoop ecosystem.  Nonetheless, this would also be the
# case with just the name node parsing, and seems unavoidable given
# the fact that the xml records span a variable number of lines

# first we find all the file that need to be processed in the hdfs
# and store the names in a  file.  It sorts them by file size (the 5th column) and
# prints only the file path (the 8th column)

hdfs dfs -ls /user/ubuntu/data/raw_patents | sort -k +5n | awk '{print $8}' > files_to_be_parsed.txt

# this command finds and stores the ip's of the worker nodes

sudo -u hdfs hdfs dfsadmin -report | grep ^Name | cut -f3 -d ' ' | tr -d '(' | tr -d ')' > worker_ips.txt
number_of_nodes=$(($(wc -l worker_ips.txt | cut -f1 -d ' ')+1))

# work can be distributed to the worker nodes by passing a list of files to be copied to
# the linux file system of the worker nodes by splitting the files into equal pieces

for ((node=1; node<$number_of_nodes; node++))
do
	file=node_files_$node.sh
	echo mkdir -p /home/ubuntu/data/raw_patents > $file
	echo hdfs dfs -get $(awk "NR % $number_of_nodes == $node" files_to_be_parsed.txt) /home/ubuntu/data/raw_patents/ >> $file
	echo scp -i ~/.ssh/insight-cloudera.pem ./$file ubuntu@$(awk "NR % $number_of_nodes == $node" worker_ips.txt):/home/ubuntu/ 
done

# scripts can be ran using tmux and ssh with

# tmux -s node1 -d
# tmux send-keys "./$file" Enter
