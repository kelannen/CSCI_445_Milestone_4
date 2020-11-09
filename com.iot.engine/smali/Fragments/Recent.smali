.class public LFragments/Recent;
.super Landroid/support/v4/app/Fragment;
.source "Recent.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttCallback;
.implements LSession/IOnClickOfSwitchChange;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/Recent$AsyncMqttClientTask;
    }
.end annotation


# instance fields
.field private adapterSwitch:LAdapter/AdapterCustomRecent;

.field broker:Ljava/lang/String;

.field clientId:Ljava/lang/String;

.field connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field context:Landroid/content/Context;

.field private db:LDatabase/DatabaseHandler;

.field private listSwitchType:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private lstSwitches:Landroid/support/v7/widget/RecyclerView;

.field mNetworkInfo:Ljava/lang/String;

.field mSwitchOFF:[I

.field mSwitchON:[I

.field mSwitchONOFF:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private messageRecent:Landroid/content/BroadcastReceiver;

.field mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

.field persistence:Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

.field sessionManager:LSession/SessionManager;

.field private switchDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x15

    .line 50
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 62
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LFragments/Recent;->mSwitchON:[I

    .line 69
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, LFragments/Recent;->mSwitchOFF:[I

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFragments/Recent;->mSwitchONOFF:Ljava/util/ArrayList;

    .line 77
    const-string v0, ""

    iput-object v0, p0, LFragments/Recent;->broker:Ljava/lang/String;

    .line 78
    const-string v0, ""

    iput-object v0, p0, LFragments/Recent;->clientId:Ljava/lang/String;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 198
    new-instance v0, LFragments/Recent$1;

    invoke-direct {v0, p0}, LFragments/Recent$1;-><init>(LFragments/Recent;)V

    iput-object v0, p0, LFragments/Recent;->messageRecent:Landroid/content/BroadcastReceiver;

    return-void

    .line 62
    nop

    :array_0
    .array-data 4
        0x7f020156
        0x7f02014b
        0x7f02014d
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f02015b
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
    .end array-data

    .line 69
    :array_1
    .array-data 4
        0x7f020132
        0x7f020131
        0x7f020135
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
    .end array-data
.end method

.method static synthetic access$000(LFragments/Recent;)V
    .locals 0
    .param p0, "x0"    # LFragments/Recent;

    .prologue
    .line 50
    invoke-direct {p0}, LFragments/Recent;->setMqttClient()V

    return-void
.end method

.method private initWidgets()V
    .locals 2

    .prologue
    .line 106
    invoke-virtual {p0}, LFragments/Recent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, LFragments/Recent;->context:Landroid/content/Context;

    .line 107
    iget-object v0, p0, LFragments/Recent;->view:Landroid/view/View;

    const v1, 0x7f0d01a7

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, LFragments/Recent;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    .line 109
    return-void
.end method

.method private setMqttClient()V
    .locals 5

    .prologue
    .line 151
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    iput-object v1, p0, LFragments/Recent;->persistence:Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    .line 153
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, LFragments/Recent;->clientId:Ljava/lang/String;

    .line 154
    const-string v1, "Broker : "

    iget-object v2, p0, LFragments/Recent;->broker:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, LFragments/Recent;->broker:Ljava/lang/String;

    iget-object v3, p0, LFragments/Recent;->clientId:Ljava/lang/String;

    iget-object v4, p0, LFragments/Recent;->persistence:Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    iput-object v1, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 156
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    iput-object v1, p0, LFragments/Recent;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 157
    iget-object v1, p0, LFragments/Recent;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setCleanSession(Z)V

    .line 158
    iget-object v1, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 159
    iget-object v1, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    iget-object v2, p0, LFragments/Recent;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)V

    .line 160
    const-string v1, "Recent--> "

    const-string v2, "Connected"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :goto_0
    return-void

    .line 161
    :catch_0
    move-exception v0

    .line 162
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public OnClickOfSwitchChange(Ljava/util/HashMap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 229
    .local v2, "mqttMessage":Ljava/lang/String;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "$["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "SwitchTypeid"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "SwitchStatus"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "0]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    const-string v4, "Living ROom "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v3, ""

    .line 234
    .local v3, "topic":Ljava/lang/String;
    iget-object v4, p0, LFragments/Recent;->mNetworkInfo:Ljava/lang/String;

    const-string v5, "INTERNET"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 235
    iget-object v4, p0, LFragments/Recent;->sessionManager:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getTopicName()Ljava/lang/String;

    move-result-object v3

    .line 236
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "wish,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v4, "IP"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/out,"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 242
    :goto_0
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 243
    .local v1, "message2":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 244
    const-string v4, "Message "

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    const-string v4, "Topic -->"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v4, "Broker "

    iget-object v5, p0, LFragments/Recent;->broker:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v4, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v4, :cond_1

    .line 248
    invoke-virtual {p0}, LFragments/Recent;->getMqttConnection()Lorg/eclipse/paho/client/mqttv3/MqttClient;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Lorg/eclipse/paho/client/mqttv3/MqttClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 254
    :goto_1
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v5, "Message published"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    iget-object v7, p0, LFragments/Recent;->db:LDatabase/DatabaseHandler;

    const-string v4, "SwitchID"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "SwitchStatus"

    invoke-virtual {p1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "DimmerValue"

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v7, v4, v5, v6}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    .end local v1    # "message2":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .end local v3    # "topic":Ljava/lang/String;
    :goto_2
    iget-object v4, p0, LFragments/Recent;->adapterSwitch:LAdapter/AdapterCustomRecent;

    invoke-virtual {v4}, LAdapter/AdapterCustomRecent;->notifyDataSetChanged()V

    .line 261
    return-void

    .line 238
    .restart local v3    # "topic":Ljava/lang/String;
    :cond_0
    :try_start_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP"

    invoke-virtual {p1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/out"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 250
    .restart local v1    # "message2":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    :cond_1
    new-instance v4, LFragments/Recent$AsyncMqttClientTask;

    invoke-direct {v4, p0}, LFragments/Recent$AsyncMqttClientTask;-><init>(LFragments/Recent;)V

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Void;

    invoke-virtual {v4, v5}, LFragments/Recent$AsyncMqttClientTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_1
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 256
    .end local v1    # "message2":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .end local v3    # "topic":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 257
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/MqttException;->printStackTrace()V

    goto :goto_2
.end method

.method public OnProgressChangeListener(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 266
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    return-void
.end method

.method public connectionLost(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 211
    return-void
.end method

.method public deliveryComplete(Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;)V
    .locals 0
    .param p1, "iMqttDeliveryToken"    # Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    .prologue
    .line 223
    return-void
.end method

.method protected getMqttConnection()Lorg/eclipse/paho/client/mqttv3/MqttClient;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    if-eqz v0, :cond_0

    .line 113
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "reusing conntion..."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 114
    iget-object v0, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    .line 117
    :goto_0
    return-object v0

    .line 116
    :cond_0
    new-instance v0, LFragments/Recent$AsyncMqttClientTask;

    invoke-direct {v0, p0}, LFragments/Recent$AsyncMqttClientTask;-><init>(LFragments/Recent;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, LFragments/Recent$AsyncMqttClientTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 117
    iget-object v0, p0, LFragments/Recent;->mqqtClient:Lorg/eclipse/paho/client/mqttv3/MqttClient;

    goto :goto_0
.end method

.method public getSwitchesList()V
    .locals 2

    .prologue
    .line 175
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    .line 176
    iget-object v1, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 177
    iget-object v1, p0, LFragments/Recent;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1}, LDatabase/DatabaseHandler;->getRecentSwitches()Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :goto_0
    return-void

    .line 179
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public messageArrived(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "mqttMessage"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 215
    const-string v0, "Recent-->"

    const-string v1, "MessageArrived()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const-string v0, "Recent-->"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    const-string v0, "Recent-->"

    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 88
    const v2, 0x7f040090

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, LFragments/Recent;->view:Landroid/view/View;

    .line 89
    new-instance v2, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Recent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LFragments/Recent;->db:LDatabase/DatabaseHandler;

    .line 90
    invoke-direct {p0}, LFragments/Recent;->initWidgets()V

    .line 91
    new-instance v2, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/Recent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, LFragments/Recent;->sessionManager:LSession/SessionManager;

    .line 92
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tcp://"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, LFragments/Recent;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":1883"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, LFragments/Recent;->broker:Ljava/lang/String;

    .line 94
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, LFragments/Recent;->mSwitchOFF:[I

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 95
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 96
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "ON"

    iget-object v3, p0, LFragments/Recent;->mSwitchON:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    const-string v2, "OFF"

    iget-object v3, p0, LFragments/Recent;->mSwitchOFF:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    iget-object v2, p0, LFragments/Recent;->mSwitchONOFF:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    .end local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    iget-object v2, p0, LFragments/Recent;->view:Landroid/view/View;

    return-object v2
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 169
    invoke-virtual {p0}, LFragments/Recent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Recent;->messageRecent:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 124
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 125
    invoke-virtual {p0}, LFragments/Recent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Recent;->messageRecent:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "MqttCallBack"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 127
    invoke-virtual {p0}, LFragments/Recent;->setSwitchAdapter()V

    .line 129
    iget-object v0, p0, LFragments/Recent;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemoUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, LFragments/Recent;->context:Landroid/content/Context;

    invoke-static {v0}, LSession/NetworkConnectionInfo;->CheckWifiConnection(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "WIFI"

    iput-object v0, p0, LFragments/Recent;->mNetworkInfo:Ljava/lang/String;

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tcp://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LFragments/Recent;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getRouterIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":1883"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LFragments/Recent;->broker:Ljava/lang/String;

    .line 139
    :cond_0
    :goto_0
    return-void

    .line 133
    :cond_1
    iget-object v0, p0, LFragments/Recent;->context:Landroid/content/Context;

    invoke-static {v0}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    const-string v0, "INTERNET"

    iput-object v0, p0, LFragments/Recent;->mNetworkInfo:Ljava/lang/String;

    .line 135
    const-string v0, "tcp://gowish.goiot.com:1883"

    iput-object v0, p0, LFragments/Recent;->broker:Ljava/lang/String;

    goto :goto_0
.end method

.method public setSwitchAdapter()V
    .locals 4

    .prologue
    .line 186
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    .line 187
    iget-object v0, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 188
    iget-object v0, p0, LFragments/Recent;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getRecentSwitches()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    .line 189
    iget-object v0, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 190
    new-instance v0, LAdapter/AdapterCustomRecent;

    invoke-virtual {p0}, LFragments/Recent;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, LFragments/Recent;->switchDatas:Ljava/util/ArrayList;

    iget-object v3, p0, LFragments/Recent;->mSwitchONOFF:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3, p0}, LAdapter/AdapterCustomRecent;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;LFragments/Recent;)V

    iput-object v0, p0, LFragments/Recent;->adapterSwitch:LAdapter/AdapterCustomRecent;

    .line 191
    iget-object v0, p0, LFragments/Recent;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, LFragments/Recent;->context:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 192
    iget-object v0, p0, LFragments/Recent;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, LFragments/Recent;->adapterSwitch:LAdapter/AdapterCustomRecent;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 193
    iget-object v0, p0, LFragments/Recent;->adapterSwitch:LAdapter/AdapterCustomRecent;

    invoke-virtual {v0}, LAdapter/AdapterCustomRecent;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    :goto_0
    return-void

    .line 194
    :catch_0
    move-exception v0

    goto :goto_0
.end method
