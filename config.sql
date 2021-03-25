/*
grant all on utl_recomp to casinocrm;
grant execute on utl_recomp to casinocrm;

SELECT * FROM DBA_JAVA_POLICY t WHERE t.GRANTEE = 'CASINOCRM';

select count(*) from user_objects where status<>'VALID';
begin sys.utl_recomp.recomp_serial; end;
*/

DECLARE
  R DBA_JAVA_POLICY.SEQ%TYPE;
BEGIN
  FOR R IN (SELECT T.SEQ FROM DBA_JAVA_POLICY T WHERE T.GRANTEE = 'CASINOCRM')
  LOOP
    DBMS_JAVA.DISABLE_PERMISSION(R.SEQ);
    DBMS_JAVA.DELETE_PERMISSION(R.SEQ);
    DBMS_OUTPUT.PUT_LINE(R.SEQ);
  END LOOP;
  
  --grant CONNECT,RESOURCE,JAVAUSERPRIV to casinocrm;

  dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', '*', 'connect');
  dbms_java.grant_permission('CASINOCRM', 'SYS:oracle.aurora.security.JServerPermission', 'LoadClassInPackage.*', '');
  dbms_java.grant_permission('CASINOCRM', 'SYS:java.lang.RuntimePermission', 'accessDeclaredMembers', '');
  dbms_java.grant_permission('CASINOCRM', 'SYS:java.lang.reflect.ReflectPermission', 'suppressAccessChecks', '');

  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.security.SecurityPermission', 'putProviderProperty.Simple SASL/PLAIN Server Provider', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.security.SecurityPermission', 'insertProvider', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.security.auth.AuthPermission', 'modifyPublicCredentials', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.security.auth.AuthPermission', 'modifyPrivateCredentials', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.security.auth.AuthPermission', 'doAs', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.security.auth.AuthPermission', 'getSubject', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.security.auth.AuthPermission', 'createLoginContext.KafkaClient', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.security.AllPermission', '', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.security.AllPermission', '', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:oracle.aurora.security.JServerPermission', 'Verifier', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.lang.RuntimePermission', 'getClassLoader', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.management.MBeanTrustPermission', 'register', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.management.MBeanServerPermission', 'createMBeanServer', '');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.management.MBeanPermission', 'org.apache.kafka.common.metrics.JmxReporter$KafkaMbean#-*', 'registerMBean');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.management.MBeanPermission', 'org.apache.kafka.common.metrics.JmxReporter$KafkaMbean#-*', 'unregisterMBean');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:javax.management.MBeanPermission', 'org.apache.kafka.common.utils.AppInfoParser$AppInfo#-*', 'registerMBean');    
  --dbms_java.grant_permission('CASINOCRM', 'SYS:oracle.aurora.security.JServerPermission', 'LoadClassInPackage.gr.northdigital.*', '');  
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', 'httpbin.org', 'connect,resolve');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', 'httpbin.org:443', 'connect,resolve');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', '192.168.1.242', 'connect,resolve');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', '192.168.1.242', 'connect,resolve');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', '192.168.1.242:9092', 'connect,resolve');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', '192.168.1.242:2181', 'connect,resolve');
  --dbms_java.grant_permission('CASINOCRM', 'SYS:java.net.SocketPermission', '192.168.1.243', 'connect,resolve');

END;

