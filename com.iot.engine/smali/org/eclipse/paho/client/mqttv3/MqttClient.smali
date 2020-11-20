.class public Lorg/eclipse/paho/client/mqttv3/MqttClient;
.super Ljava/lang/Object;
.source "MqttClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttClient;


# instance fields
.field protected aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field protected timeToWait:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serverURI"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 138
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    .line 139
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V
    .locals 2
    .param p1, "serverURI"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    .line 65
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->timeToWait:J

    .line 226
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    .line 227
    return-void
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 520
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->generateClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 439
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->close()V

    .line 440
    return-void
.end method

.method public connect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 233
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 234
    return-void
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V
    .locals 4
    .param p1, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 240
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    .line 241
    return-void
.end method

.method public connectWithResult(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4
    .param p1, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 247
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1, p1, v2, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    .line 248
    .local v0, "tok":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    .line 249
    return-object v0
.end method

.method public disconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 256
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion()V

    .line 257
    return-void
.end method

.method public disconnect(J)V
    .locals 3
    .param p1, "quiesceTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 263
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion()V

    .line 264
    return-void
.end method

.method public disconnectForcibly()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 272
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly()V

    .line 273
    return-void
.end method

.method public disconnectForcibly(J)V
    .locals 1
    .param p1, "disconnectTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 281
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(J)V

    .line 282
    return-void
.end method

.method public disconnectForcibly(JJ)V
    .locals 1
    .param p1, "quiesceTimeout"    # J
    .param p3, "disconnectTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 290
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(JJ)V

    .line 291
    return-void
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 475
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getCurrentServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Lorg/eclipse/paho/client/mqttv3/util/Debug;
    .locals 1

    .prologue
    .line 531
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getDebug()Lorg/eclipse/paho/client/mqttv3/util/Debug;

    move-result-object v0

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1

    .prologue
    .line 453
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 460
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTimeToWait()J
    .locals 2

    .prologue
    .line 432
    iget-wide v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->timeToWait:J

    return-wide v0
.end method

.method public getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 482
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    move-result-object v0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->isConnected()Z

    move-result v0

    return v0
.end method

.method public messageArrivedComplete(II)V
    .locals 1
    .param p1, "messageId"    # I
    .param p2, "qos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 507
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->messageArrivedComplete(II)V

    .line 508
    return-void
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 399
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, p2, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;->waitForCompletion(J)V

    .line 400
    return-void
.end method

.method public publish(Ljava/lang/String;[BIZ)V
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .param p3, "qos"    # I
    .param p4, "retained"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 388
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 389
    .local v0, "message":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 390
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    .line 391
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 392
    return-void
.end method

.method public reconnect()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 524
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnect()V

    .line 525
    return-void
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    .prologue
    .line 496
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 497
    return-void
.end method

.method public setManualAcks(Z)V
    .locals 1
    .param p1, "manualAcks"    # Z

    .prologue
    .line 503
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->setManualAcks(Z)V

    .line 504
    return-void
.end method

.method public setTimeToWait(J)V
    .locals 3
    .param p1, "timeToWaitInMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 421
    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    .line 422
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 424
    :cond_0
    iput-wide p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->timeToWait:J

    .line 425
    return-void
.end method

.method public subscribe(Ljava/lang/String;)V
    .locals 4
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 297
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-array v1, v2, [I

    aput v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    .line 298
    return-void
.end method

.method public subscribe(Ljava/lang/String;I)V
    .locals 3
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "qos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 315
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    .line 316
    return-void
.end method

.method public subscribe(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V
    .locals 4
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "qos"    # I
    .param p3, "messageListener"    # Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 355
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-array v1, v2, [I

    aput p2, v1, v3

    new-array v2, v2, [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;

    aput-object p3, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V

    .line 356
    return-void
.end method

.method public subscribe(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V
    .locals 4
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "messageListener"    # Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 337
    new-array v0, v2, [Ljava/lang/String;

    aput-object p1, v0, v3

    new-array v1, v2, [I

    aput v2, v1, v3

    new-array v2, v2, [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;

    aput-object p2, v2, v3

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V

    .line 338
    return-void
.end method

.method public subscribe([Ljava/lang/String;)V
    .locals 3
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 304
    array-length v2, p1

    new-array v1, v2, [I

    .line 305
    .local v1, "qos":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 308
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    .line 309
    return-void

    .line 306
    :cond_0
    const/4 v2, 0x1

    aput v2, v1, v0

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public subscribe([Ljava/lang/String;[I)V
    .locals 7
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "qos"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/16 v6, 0x80

    .line 322
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v3, p1, p2, v4, v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v2

    .line 323
    .local v2, "tok":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v4

    invoke-interface {v2, v4, v5}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    .line 324
    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getGrantedQos()[I

    move-result-object v0

    .line 325
    .local v0, "grantedQos":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v0

    if-lt v1, v3, :cond_0

    .line 328
    array-length v3, v0

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget v3, p2, v3

    if-ne v3, v6, :cond_1

    .line 329
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v6}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v3

    .line 326
    :cond_0
    aget v3, v0, v1

    aput v3, p2, v1

    .line 325
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 331
    :cond_1
    return-void
.end method

.method public subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V
    .locals 4
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "qos"    # [I
    .param p3, "messageListeners"    # [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I)V

    .line 363
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    .line 366
    return-void

    .line 364
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    aget-object v2, p1, v0

    aget-object v3, p3, v0

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setMessageListener(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V

    .line 363
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public subscribe([Ljava/lang/String;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V
    .locals 3
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "messageListeners"    # [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 344
    array-length v2, p1

    new-array v1, v2, [I

    .line 345
    .local v1, "qos":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    .line 348
    invoke-virtual {p0, p1, v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V

    .line 349
    return-void

    .line 346
    :cond_0
    const/4 v2, 0x1

    aput v2, v1, v0

    .line 345
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public unsubscribe(Ljava/lang/String;)V
    .locals 2
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->unsubscribe([Ljava/lang/String;)V

    .line 373
    return-void
.end method

.method public unsubscribe([Ljava/lang/String;)V
    .locals 4
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 380
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttClient;->aClient:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v0, p1, v1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->getTimeToWait()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->waitForCompletion(J)V

    .line 381
    return-void
.end method
