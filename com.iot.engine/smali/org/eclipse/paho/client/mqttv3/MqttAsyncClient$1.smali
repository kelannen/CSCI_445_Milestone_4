.class Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;


# instance fields
.field final this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field private final val$automaticReconnect:Z


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    iput-boolean p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;->val$automaticReconnect:Z

    .line 558
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public connectComplete(ZLjava/lang/String;)V
    .locals 0
    .param p1, "reconnect"    # Z
    .param p2, "serverURI"    # Ljava/lang/String;

    .prologue
    .line 565
    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x1

    .line 568
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;->val$automaticReconnect:Z

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setRestingState(Z)V

    .line 571
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$3(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Z)V

    .line 572
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$4(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V

    .line 574
    :cond_0
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .locals 0
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    .prologue
    .line 563
    return-void
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 0
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 561
    return-void
.end method
