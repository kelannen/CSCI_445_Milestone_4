.class public Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;
.super Ljava/lang/Object;
.source "ConnectActionListener.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;


# instance fields
.field private client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

.field private comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private mqttCallbackExtended:Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

.field private options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private originalMqttVersion:I

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private reconnect:Z

.field private userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

.field private userContext:Ljava/lang/Object;

.field private userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Z)V
    .locals 1
    .param p1, "client"    # Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;
    .param p2, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .param p3, "comms"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;
    .param p4, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .param p5, "userToken"    # Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .param p6, "userContext"    # Ljava/lang/Object;
    .param p7, "userCallback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .param p8, "reconnect"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 71
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    .line 72
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 73
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 74
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    .line 75
    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userContext:Ljava/lang/Object;

    .line 76
    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    .line 77
    invoke-virtual {p4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v0

    iput v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    .line 78
    iput-boolean p8, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->reconnect:Z

    .line 79
    return-void
.end method


# virtual methods
.method public connect()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 171
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 172
    .local v1, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 173
    invoke-virtual {v1, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 175
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getServerURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->clear()V

    .line 181
    :cond_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v2

    if-nez v2, :cond_1

    .line 182
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 186
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v2, v3, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttException;
    invoke-virtual {p0, v1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .param p2, "exception"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x4

    .line 120
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModules()[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v4

    array-length v3, v4

    .line 121
    .local v3, "numberOfURIs":I
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModuleIndex()I

    move-result v2

    .line 123
    .local v2, "index":I
    add-int/lit8 v4, v2, 0x1

    if-lt v4, v3, :cond_0

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v4, :cond_4

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v4

    if-ne v4, v5, :cond_4

    .line 125
    :cond_0
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v4, :cond_3

    .line 126
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getMqttVersion()I

    move-result v4

    if-ne v4, v5, :cond_2

    .line 127
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v5, 0x3

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 138
    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->connect()V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    :cond_1
    :goto_1
    return-void

    .line 130
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 131
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModuleIndex(I)V

    goto :goto_0

    .line 135
    :cond_3
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModuleIndex(I)V

    goto :goto_0

    .line 140
    :catch_0
    move-exception v0

    .line 141
    .local v0, "e":Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 145
    .end local v0    # "e":Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
    :cond_4
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v4, :cond_5

    .line 146
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 149
    :cond_5
    instance-of v4, p2, Lorg/eclipse/paho/client/mqttv3/MqttException;

    if-eqz v4, :cond_6

    move-object v1, p2

    .line 150
    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    .line 155
    .local v1, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :goto_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v4, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 156
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v4, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifyComplete()V

    .line 157
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v4, v4, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setClient(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V

    .line 159
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v4, :cond_1

    .line 160
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userContext:Ljava/lang/Object;

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 161
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-interface {v4, v5, p2}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onFailure(Lorg/eclipse/paho/client/mqttv3/IMqttToken;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 153
    .end local v1    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    :cond_6
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    .restart local v1    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    goto :goto_2
.end method

.method public onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V
    .locals 4
    .param p1, "token"    # Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    .prologue
    .line 87
    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->originalMqttVersion:I

    if-nez v1, :cond_0

    .line 88
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->options:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->setMqttVersion(I)V

    .line 90
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-interface {p1}, Lorg/eclipse/paho/client/mqttv3/IMqttToken;->getResponse()Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->markComplete(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttException;)V

    .line 91
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->notifyComplete()V

    .line 92
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->client:Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setClient(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;)V

    .line 94
    iget-boolean v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->reconnect:Z

    if-eqz v1, :cond_1

    .line 95
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->notifyReconnect()V

    .line 98
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    if-eqz v1, :cond_2

    .line 99
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userContext:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 100
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userCallback:Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->userToken:Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-interface {v1, v2}, Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;->onSuccess(Lorg/eclipse/paho/client/mqttv3/IMqttToken;)V

    .line 103
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->mqttCallbackExtended:Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    if-eqz v1, :cond_3

    .line 104
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModules()[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModuleIndex()I

    move-result v2

    aget-object v1, v1, v2

    invoke-interface {v1}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getServerURI()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "serverURI":Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->mqttCallbackExtended:Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    iget-boolean v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->reconnect:Z

    invoke-interface {v1, v2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;->connectComplete(ZLjava/lang/String;)V

    .line 109
    .end local v0    # "serverURI":Ljava/lang/String;
    :cond_3
    return-void
.end method

.method public setMqttCallbackExtended(Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;)V
    .locals 0
    .param p1, "mqttCallbackExtended"    # Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    .prologue
    .line 198
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->mqttCallbackExtended:Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    .line 199
    return-void
.end method
