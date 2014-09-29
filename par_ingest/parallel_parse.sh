# script to parse the xml files in parallel, using each of the nodes.
# This method is scalable, albeit without the benefits of job tracking
# outside of the Hadoop ecosystem.  Nonetheless, this would also be the
# case with just the name node parsing, and seems unavoidable given
# the fact that the xml records span a variable number of lines

# starting_year is the year when txt files stopped

current_year=$(date +%Y)
starting_year=2001
total_years=$((current_year-starting_year))

# this command finds and stores the ip's of the worker nodes

sudo -u hdfs hdfs dfsadmin -report | grep ^Name | cut -f3 -d ' ' | tr -d '(' | tr -d ')' > worker_ips.txt
number_of_nodes=$(($(wc -l worker_ips.txt | cut -f1 -d ' ')+1))

# work can be distributed to the worker nodes by generating and moving all the necessary scripts with
for 
scp -i ~/.ssh/insight-cloudera.pem work ubuntu@ip-172-31-26-16.us-west-1.compute.internal:/home/ubuntu/
