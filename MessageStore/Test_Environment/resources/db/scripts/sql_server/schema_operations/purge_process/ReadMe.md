Run the scripts in the numbered order(01 to 05) as purge task, PFB description for the scripts - 

|Script Name| Description|
|---|---|
01_create_purge_indexes | Creates the purge indexes |
02_exec_pre_purge | Executes pre-purge SP to do marking of records to be deleted |
03_manage_purge_indexes | Deletes pre-purge indexes and creates purge indexes |
04_exec_purge | Executes purge SP to delete the records |
05_delete_purge_indexes | Deletes purge indexes |

**Note** To run these, Please make sure you enable the script execution in your tooling. 

| Tool Name | How to enable| 
|---|---|
| **SSMS** | Go to the "Query" menu in Top Pinned Bar, and select **SQLCMD** mode . |
| **Azure Data Studio** | A toogle is available on the query editor page in the top right(**Enable SqlCmd**) |
