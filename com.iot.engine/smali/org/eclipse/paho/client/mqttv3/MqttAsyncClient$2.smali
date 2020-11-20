.class Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# instance fields
.field final this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;


# direct methods
.method constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    .line 1078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 7
    .param p1, "asyncActionToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    .line 1089
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attemptReconnect"

    const-string v3, "502"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v6

    invoke-interface {v6}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1090
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$6()I

    move-result v0

    const v1, 0x1f400

    if-ge v0, v1, :cond_0

    .line 1091
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$6()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$7(I)V

    .line 1093
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$6()I

    move-result v1

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$8(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;I)V

    .line 1094
    return-void
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 7
    .param p1, "asyncActionToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .prologue
    const/4 v6, 0x0

    .line 1082
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$1()Ljava/lang/String;

    move-result-object v1

    const-string v2, "attemptReconnect"

    const-string v3, "501"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getClient()Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;

    move-result-object v5

    invoke-interface {v5}, Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setRestingState(Z)V

    .line 1084
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;->this$0:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->access$5(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V

    .line 1085
    return-void
.end method
