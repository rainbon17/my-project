�m�~�Ȩt�Ρn
--retrieve all table names for a given schema
select * from sysibm.systables 
where 1=1 and creator = 'DBAD' 
and type = 'T'

set PATH=D:\Tools\java8\bin;%PATH%
>java -jar schemaSpy 5.0.0.jar -t db2jcc -db insdb -u DBAD -p dbad88 -schema users -charset UTF-8 -o d:/dbad88
SchemaSpy�ͦ�����?�q?�OISO-8859-1,����?�ܴN�O??,�ݭn��w??-charset UTF-8.?�ݪ��Oschemaspy��help�M�D?�W���Ϊk��?������?�@?,�ͬO�b��?�����????��.��??�N�O?�����n?��.
java -jar schemaspy-6.0.0-beta.3.jar -t db2jcc -db insdb -u DBAB -p dbab88 -schema users  -charset UTF-8 -o d:/dbab88b
java -jar schemaspy 6.0.0.jar -t db2jcc -dp 'c:/Program Files/IBM/SQLLIB/java/db2jcc4.jar' -db insdb  -schema users  -u DBAB -p dbab88 -o d:/dbab88b
java -jar schemaSpy_5.0.0.jar -t db2jcc -db insdb -u DBED -p dbed88 -schema users -charset UTF-8 -o d:/dbed88c -gv D:\Tools\Graphviz2x.7\Graphviz2.38

--�g��H��DTADZ060  --�g��H��������DTADZ061
Select ma.*,se.GATHER CERTIFY from DBAD.DTADZ060 ma ,DTADZ061 se where ma.AGENT ID=se.AGENT ID
��� N221280655 
�²Q�A N222227821
--�X���k�ݳ����DTADZ070
Select zs.div name,zs.COUNSEL ID from DBAD.DTADZ060 ma ,DTADZ070 zs where ma.AGENT DIV NO=zs.DIV NO and   ma.AGENT NAME like '%���%'


--�O�g�N���I������DTADZ052
DTADZ056

--##�ȶO�ΥN���d��##
Select 
APPLY NO,APPLY ID,
BROKER NO||'- '||(select COMPANY FULL NAME from DTADZ056 zf where zf.BROKER NO=zs.BROKER NO )BROKER NO,--�g���H�N�X
zs.PRODUCT CODE||'- '||(select Field Name from DBAG.DTAGZ020 gz where gz.database no='AT' and gz.field no='PRODUCT CODE' and gz.field contain=zs.PRODUCT CODE)PRODUCT CODE,--�ӫ~���O�N��
zs.BUSINESS FEE TYPE||'- '||(select Field Name from DBAG.DTAGZ020 gz where gz.database no='AD' and gz.field no='SC BUSINESS FEE TYPE' and gz.field contain=zs.BUSINESS FEE TYPE)BUSINESS FEE TYPE,--�~�ȶO������
zs.APPLY TYPE||'- '||(select Field Name from DBAG.DTAGZ020 gz where gz.database no='AD' and gz.field no='SC APPLY TYPE' and gz.field contain=zs.APPLY TYPE)APPLY TYPE,--�ӽ�����
zs.APPLY DIV NO||'- '||(select DIV NAME from DTADZ070 dz where dz.DIV NO=zs.APPLY DIV NO)APPLY DIV NO,--�ӽг��
COPERATE COMPANY NO  from DBAD.DTADZ770 zs --�~�ȶO�ΥN��
where  1=1 and
COPERATE COMPANY NO='BEAF'
--apply no='CSC0000012'
--ORDER BY


--�~���v�ץ��@�~ 
Select * from DBAD.DTADE000 where policy_no='150106BO100003'
Select * from DBAD.DTADE101 where policy_no='150106BO100003'

update DBAD.DTADE101 set status='5' where status='1' and policy_no='150106BO100003' //enbable btn:�ק�


//********************************************************************************************************




//********************************************************************************************************
select count(name),creator from sysibm.systables 
where type='T'
group by creator having creator like 'DB%'
1,CREATOR
'16','DB2INST1'
'17','DB2ADMIN'
'17','DBAM'
'23','DBZE'
'26','DBBB'
'28','DBDS'
'29','DBED'
'41','DBDF'
'43','DBMG'
'50','DBFW'
'62','DBDD'
'69','DBEA'
'71','DBDE'
'96','DBDC'
'123','DBPA'
'125','DBDJ'
'142','DBCM'
'166','DBAE'
'182','DBAG'
'212','DBZZ'
'246','DBDK'
'252','DBAR'
'436','DBRP'
'457','DBHR'
'588','DBAA'
'687','DBAD'
'702','DBFA'
'822','DBAB'
'825','DBBP'
'1082','DBAT'
