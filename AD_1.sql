《外務系統》
--retrieve all table names for a given schema
select * from sysibm.systables 
where 1=1 and creator = 'DBAD' 
and type = 'T'


>java -jar schemaSpy_5.0.0.jar -t db2jcc -db insdb -u DBAD -p dbad88 -schema users -o d:/dbad88
SchemaSpy生成的文?默?是ISO-8859-1,中文?示就是??,需要制定??-charset UTF-8.?异的是schemaspy的help和主?上的用法都?有提到?一?,俺是在源?里找到????的.原??就是?源的好?啊.

--經手人檔DTADZ060  --經手人招攬資格檔DTADZ061
Select ma.*,se.GATHER_CERTIFY from DBAD.DTADZ060 ma ,DTADZ061 se where ma.AGENT_ID=se.AGENT_ID
月玲 N221280655 
謝淑錦 N222227821
--出單歸屬單位檔DTADZ070
Select zs.div_name,zs.COUNSEL_ID from DBAD.DTADZ060 ma ,DTADZ070 zs where ma.AGENT_DIV_NO=zs.DIV_NO and   ma.AGENT_NAME like '%月玲%'


--保經代據點分支檔DTADZ052
DTADZ056

--##務費用代號查詢##
Select 
APPLY_NO,APPLY_ID,
BROKER_NO||'- '||(select COMPANY_FULL_NAME from DTADZ056 zf where zf.BROKER_NO=zs.BROKER_NO )BROKER_NO,--經紀人代碼
zs.PRODUCT_CODE||'- '||(select Field_Name from DBAG.DTAGZ020 gz where gz.database_no='AT' and gz.field_no='PRODUCT_CODE' and gz.field_contain=zs.PRODUCT_CODE)PRODUCT_CODE,--商品類別代號
zs.BUSINESS_FEE_TYPE||'- '||(select Field_Name from DBAG.DTAGZ020 gz where gz.database_no='AD' and gz.field_no='SC_BUSINESS_FEE_TYPE' and gz.field_contain=zs.BUSINESS_FEE_TYPE)BUSINESS_FEE_TYPE,--業務費用類型
zs.APPLY_TYPE||'- '||(select Field_Name from DBAG.DTAGZ020 gz where gz.database_no='AD' and gz.field_no='SC_APPLY_TYPE' and gz.field_contain=zs.APPLY_TYPE)APPLY_TYPE,--申請類型
zs.APPLY_DIV_NO||'- '||(select DIV_NAME from DTADZ070 dz where dz.DIV_NO=zs.APPLY_DIV_NO)APPLY_DIV_NO,--申請單位
COPERATE_COMPANY_NO  from DBAD.DTADZ770 zs --業務費用代號
where  1=1 and
COPERATE_COMPANY_NO='BEAF'
--apply_no='CSC0000012'
--ORDER BY
