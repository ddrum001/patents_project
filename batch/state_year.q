insert overwrite table t2008 select state, count(state) from statedata where dateapp between 20080000 and 20090000 group by state;
