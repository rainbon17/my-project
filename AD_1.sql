�m�~�Ȩt�Ρn
--retrieve all table names for a given schema
select * from sysibm.systables 
where 1=1 and creator = 'DBAD' 
and type = 'T'


>java -jar schemaSpy_5.0.0.jar -t db2jcc -db insdb -u DBAD -p dbad88 -schema users -o d:/dbad88
SchemaSpy�ͦ�����?�q?�OISO-8859-1,����?�ܴN�O??,�ݭn��w??-charset UTF-8.?�ݪ��Oschemaspy��help�M�D?�W���Ϊk��?������?�@?,�ͬO�b��?�����????��.��??�N�O?�����n?��.

--�g��H��DTADZ060  --�g��H��������DTADZ061
Select ma.*,se.GATHER_CERTIFY from DBAD.DTADZ060 ma ,DTADZ061 se where ma.AGENT_ID=se.AGENT_ID
��� N221280655 
�²Q�A N222227821
--�X���k�ݳ����DTADZ070
Select zs.div_name,zs.COUNSEL_ID from DBAD.DTADZ060 ma ,DTADZ070 zs where ma.AGENT_DIV_NO=zs.DIV_NO and   ma.AGENT_NAME like '%���%'


--�O�g�N���I������DTADZ052
DTADZ056

--##�ȶO�ΥN���d��##
Select 
APPLY_NO,APPLY_ID,
BROKER_NO||'- '||(select COMPANY_FULL_NAME from DTADZ056 zf where zf.BROKER_NO=zs.BROKER_NO )BROKER_NO,--�g���H�N�X
zs.PRODUCT_CODE||'- '||(select Field_Name from DBAG.DTAGZ020 gz where gz.database_no='AT' and gz.field_no='PRODUCT_CODE' and gz.field_contain=zs.PRODUCT_CODE)PRODUCT_CODE,--�ӫ~���O�N��
zs.BUSINESS_FEE_TYPE||'- '||(select Field_Name from DBAG.DTAGZ020 gz where gz.database_no='AD' and gz.field_no='SC_BUSINESS_FEE_TYPE' and gz.field_contain=zs.BUSINESS_FEE_TYPE)BUSINESS_FEE_TYPE,--�~�ȶO������
zs.APPLY_TYPE||'- '||(select Field_Name from DBAG.DTAGZ020 gz where gz.database_no='AD' and gz.field_no='SC_APPLY_TYPE' and gz.field_contain=zs.APPLY_TYPE)APPLY_TYPE,--�ӽ�����
zs.APPLY_DIV_NO||'- '||(select DIV_NAME from DTADZ070 dz where dz.DIV_NO=zs.APPLY_DIV_NO)APPLY_DIV_NO,--�ӽг��
COPERATE_COMPANY_NO  from DBAD.DTADZ770 zs --�~�ȶO�ΥN��
where  1=1 and
COPERATE_COMPANY_NO='BEAF'
--apply_no='CSC0000012'
--ORDER BY
