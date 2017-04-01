# Batch Design
the goal of batch is to load data from transactional database(**vehicle**)
to datawarehouse(**dw**) in each day. Our basic goal
is to load data from **vehicle**'s table into the dimension and fact tables
of **dw**. Beside this, we also need to consider situation
 when our batch loading fails and how to recover from it.
 
 So here is the steps:
 * load data into dimension table
    * type 1
        * exists-exist
        * exists-not exists
        * not exists-exists
    * type 2
 * load data into fact table
    * use staging table to help
 * design batch running & tracking & recover system
 


    