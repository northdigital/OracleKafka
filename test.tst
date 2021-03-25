PL/SQL Developer Test script 3.0
8
begin
  -- Call the function
  :result := casinocrm.java_procedures.kafkasendmessage(a_client_id => :a_client_id,
                                                        a_broker    => :a_broker,
                                                        a_topic     => :a_topic,
                                                        a_key       => :a_key,
                                                        a_value     => :a_value);
end;
6
result
1
﻿new send 2 -> org.apache.kafka.common.errors.TimeoutException: Failed to update metadata after 3000 ms.
5
a_client_id
1
﻿oracle
5
a_broker
1
﻿192.168.1.242:9092
5
a_topic
1
﻿demo
5
a_key
0
5
a_value
1
﻿demo demo
5
0
