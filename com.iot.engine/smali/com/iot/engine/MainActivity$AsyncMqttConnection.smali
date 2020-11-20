.class Lcom/iot/engine/MainActivity$AsyncMqttConnection;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncMqttConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/MainActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/MainActivity;)V
    .locals 0

    .prologue
    .line 1368
    iput-object p1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/MainActivity;
    .param p2, "x1"    # Lcom/iot/engine/MainActivity$1;

    .prologue
    .line 1368
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;-><init>(Lcom/iot/engine/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1368
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1379
    :try_start_0
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->broker:Ljava/lang/String;

    .line 1380
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->clientId:Ljava/lang/String;

    .line 1381
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->persistence:Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    .line 1382
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v3, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->broker:Ljava/lang/String;

    iget-object v4, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v4, v4, Lcom/iot/engine/MainActivity;->clientId:Ljava/lang/String;

    iget-object v5, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->persistence:Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 1383
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v2, v1, Lcom/iot/engine/MainActivity;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 1384
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/16 v2, 0x12c

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setConnectionTimeout(I)V

    .line 1385
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 1386
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 1387
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 1388
    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v1, v1, Lcom/iot/engine/MainActivity;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v2, v2, Lcom/iot/engine/MainActivity;->subTopic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->subscribe(Ljava/lang/String;)V

    .line 1389
    const-string v1, "Set Broker MainActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->broker:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->subTopic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1397
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 1391
    :catch_0
    move-exception v0

    .line 1393
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1394
    const-string v1, "SubScribe Exception"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1368
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 1402
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1404
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1405
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUserSync()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1409
    sget-object v0, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v1, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1410
    new-instance v0, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;

    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v1}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;-><init>(Lcom/iot/engine/MainActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/MainActivity$AsyncInternetRoomListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1418
    :goto_0
    return-void

    .line 1412
    :cond_1
    new-instance v0, Lcom/iot/engine/MainActivity$AsyncRoomListTask;

    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v1}, Lcom/iot/engine/MainActivity$AsyncRoomListTask;-><init>(Lcom/iot/engine/MainActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/MainActivity$AsyncRoomListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 1415
    :cond_2
    new-instance v0, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;

    iget-object v1, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v1}, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;-><init>(Lcom/iot/engine/MainActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/iot/engine/MainActivity$SyncUserDataAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1371
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1372
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    const-string v3, "Connecting to your home"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    iput-object v1, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    .line 1373
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncMqttConnection;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v0, v0, Lcom/iot/engine/MainActivity;->spotDialog:Ldmax/dialog/SpotsDialog;

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 1374
    return-void
.end method
