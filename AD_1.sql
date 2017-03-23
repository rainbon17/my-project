《外務系統》
--retrieve all table names for a given schema
select * from sysibm.systables 
where 1=1 and creator = 'DBAD' 
and type = 'T'

set PATH=D:\Tools\java8\bin;%PATH%
>java -jar schemaSpy 5.0.0.jar -t db2jcc -db insdb -u DBAD -p dbad88 -schema users -charset UTF-8 -o d:/dbad88
SchemaSpy生成的文?默?是ISO-8859-1,中文?示就是??,需要制定??-charset UTF-8.?异的是schemaspy的help和主?上的用法都?有提到?一?,俺是在源?里找到????的.原??就是?源的好?啊.
java -jar schemaspy-6.0.0-beta.3.jar -t db2jcc -db insdb -u DBAB -p dbab88 -schema users  -charset UTF-8 -o d:/dbab88b
java -jar schemaspy 6.0.0.jar -t db2jcc -dp 'c:/Program Files/IBM/SQLLIB/java/db2jcc4.jar' -db insdb  -schema users  -u DBAB -p dbab88 -o d:/dbab88b
java -jar schemaSpy_5.0.0.jar -t db2jcc -db insdb -u DBED -p dbed88 -schema users -charset UTF-8 -o d:/dbed88c -gv D:\Tools\Graphviz2x.7\Graphviz2.38

--經手人檔DTADZ060  --經手人招攬資格檔DTADZ061
Select ma.*,se.GATHER CERTIFY from DBAD.DTADZ060 ma ,DTADZ061 se where ma.AGENT ID=se.AGENT ID
月玲 N221280655 
謝淑錦 N222227821
--出單歸屬單位檔DTADZ070
Select zs.div name,zs.COUNSEL ID from DBAD.DTADZ060 ma ,DTADZ070 zs where ma.AGENT DIV NO=zs.DIV NO and   ma.AGENT NAME like '%月玲%'


--保經代據點分支檔DTADZ052
DTADZ056

--##務費用代號查詢##
Select 
APPLY NO,APPLY ID,
BROKER NO||'- '||(select COMPANY FULL NAME from DTADZ056 zf where zf.BROKER NO=zs.BROKER NO )BROKER NO,--經紀人代碼
zs.PRODUCT CODE||'- '||(select Field Name from DBAG.DTAGZ020 gz where gz.database no='AT' and gz.field no='PRODUCT CODE' and gz.field contain=zs.PRODUCT CODE)PRODUCT CODE,--商品類別代號
zs.BUSINESS FEE TYPE||'- '||(select Field Name from DBAG.DTAGZ020 gz where gz.database no='AD' and gz.field no='SC BUSINESS FEE TYPE' and gz.field contain=zs.BUSINESS FEE TYPE)BUSINESS FEE TYPE,--業務費用類型
zs.APPLY TYPE||'- '||(select Field Name from DBAG.DTAGZ020 gz where gz.database no='AD' and gz.field no='SC APPLY TYPE' and gz.field contain=zs.APPLY TYPE)APPLY TYPE,--申請類型
zs.APPLY DIV NO||'- '||(select DIV NAME from DTADZ070 dz where dz.DIV NO=zs.APPLY DIV NO)APPLY DIV NO,--申請單位
COPERATE COMPANY NO  from DBAD.DTADZ770 zs --業務費用代號
where  1=1 and
COPERATE COMPANY NO='BEAF'
--apply no='CSC0000012'
--ORDER BY


--業佣率修正作業 
Select * from DBAD.DTADE000 where policy_no='150106BO100003'
Select * from DBAD.DTADE101 where policy_no='150106BO100003'

update DBAD.DTADE101 set status='5' where status='1' and policy_no='150106BO100003' //enbable btn:修改


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
