http://www.mobabel.net/%E6%80%BB%E7%BB%93kafka%E6%80%A7%E8%83%BD%E8%B0%83%E4%BC%98%E5%92%8C%E5%8F%82%E6%95%B0%E8%B0%83%E4%BC%98/

http://www.weicon9.com/2017/02/Using-Websocket-On-Realtime-Application/

https://blog.csdn.net/LW_GHY/article/details/73252904

https://www.infoq.cn/article/kafka-analysis-part-1/

https://medium.com/@hsiehjenhsuan/kafka-%E5%AF%A6%E4%BD%9C%E7%B4%80%E9%8C%84-78399b7abe55

https://myapollo.com.tw/2018/10/09/python-kafka-part-1/
https://myapollo.com.tw/2018/10/13/python-kafka-part-2/
https://myapollo.com.tw/2018/10/15/python-kafka-part-3/

https://blog.csdn.net/fuyuwei2015/article/details/72943207

https://artidoro.github.io/files/Front_End_Back_End_Server_Architecture.pdf

https://www.ibm.com/developerworks/cn/opensource/os-cn-kafka/index.html

```
package com.ykkj.weiyi.socket;

import org.apache.kafka.clients.consumer.ConsumerRecord;
import org.apache.kafka.clients.consumer.ConsumerRecords;
import org.apache.kafka.clients.consumer.KafkaConsumer;

import java.io.IOException;
import java.util.Arrays;
import java.util.Properties;
import static com.ykkj.weiyi.socket.CommodityServer.webSocketSet;

public class ConsumerKafka extends Thread {
    private KafkaConsumer<String, String> consumer;
    private String topic = "test.topic";
    public ConsumerKafka() {
    }

    @Override
    public void run() {
        //加载kafka消费者参数
        Properties props = new Properties();
        props.put("bootstrap.servers", "localhost:9092");
        props.put("group.id", "ytna");
        props.put("enable.auto.commit", "true");
        props.put("auto.commit.interval.ms", "1000");
        props.put("session.timeout.ms", "15000");
        props.put("key.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
        props.put("value.deserializer", "org.apache.kafka.common.serialization.StringDeserializer");
        //创建消费者对象
        consumer = new KafkaConsumer<String, String>(props);
        consumer.subscribe(Arrays.asList(this.topic));
        //死循环，持续消费kafka
        while (true) {
            try {
                //消费数据，并设置超时时间
                ConsumerRecords<String, String> records = consumer.poll(100);
                //Consumer message
                for (ConsumerRecord<String, String> record : records) {
                    //Send message to every client
                    for (CommodityServer webSocket : webSocketSet) {
                        webSocket.sendMessage(record.value());
                    }

                }
            } catch (IOException e) {
                System.out.println(e.getMessage());
                continue;
            }
        }
    }

    public void close() {
        try {
            consumer.close();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    //供测试用，若通过tomcat启动需通过其他方法启动线程
    public static void main(String[] args) {
        ConsumerKafka consumerKafka = new ConsumerKafka();
        consumerKafka.start();
    }
}
```