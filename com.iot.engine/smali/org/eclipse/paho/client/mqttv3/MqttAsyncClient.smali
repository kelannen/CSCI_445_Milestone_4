.class public Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;
.super Ljava/lang/Object;
.source "MqttAsyncClient.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;
    }
.end annotation


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field private static final CLIENT_ID_PREFIX:Ljava/lang/String; = "paho"

.field private static final DISCONNECT_TIMEOUT:J = 0x2710L

.field private static final MAX_HIGH_SURROGATE:C = '\udbff'

.field private static final MIN_HIGH_SURROGATE:C = '\ud800'

.field private static final QUIESCE_TIMEOUT:J = 0x7530L

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

.field private static reconnectDelay:I


# instance fields
.field private clientId:Ljava/lang/String;

.field protected comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

.field private connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

.field private mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

.field private persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

.field private reconnectTimer:Ljava/util/Timer;

.field private reconnecting:Z

.field private serverURI:Ljava/lang/String;

.field private topics:Ljava/util/Hashtable;

.field private userContext:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.MqttAsyncClient"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    .line 87
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 103
    const/16 v0, 0x3e8

    sput v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    return-void

    .line 86
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

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
    .line 181
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V

    .line 182
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;)V
    .locals 1
    .param p1, "serverURI"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 185
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/TimerPingSender;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V

    .line 186
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V
    .locals 8
    .param p1, "serverURI"    # Ljava/lang/String;
    .param p2, "clientId"    # Ljava/lang/String;
    .param p3, "persistence"    # Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;
    .param p4, "pingSender"    # Lorg/eclipse/paho/client/mqttv3/MqttPingSender;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnecting:Z

    .line 275
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v2, p2}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 277
    if-nez p2, :cond_0

    .line 278
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Null clientId"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 281
    :cond_0
    const/4 v0, 0x0

    .line 282
    .local v0, "clientIdLength":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-lt v1, v2, :cond_1

    .line 287
    const v2, 0xffff

    if-le v0, v2, :cond_3

    .line 288
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "ClientId longer than 65535 characters"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 283
    :cond_1
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->Character_isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 284
    add-int/lit8 v1, v1, 0x1

    .line 285
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 282
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 291
    :cond_3
    invoke-static {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->validateURI(Ljava/lang/String;)I

    .line 293
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->serverURI:Ljava/lang/String;

    .line 294
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    .line 296
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 297
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    if-nez v2, :cond_4

    .line 298
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;

    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/persist/MemoryPersistence;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    .line 302
    :cond_4
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "MqttAsyncClient"

    const-string v5, "101"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p2, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    aput-object p3, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 304
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2, p2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-direct {v2, p0, v3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;-><init>(Lorg/eclipse/paho/client/mqttv3/IMqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/MqttPingSender;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    .line 306
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    invoke-interface {v2}, Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;->close()V

    .line 307
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->topics:Ljava/util/Hashtable;

    .line 309
    return-void
.end method

.method protected static Character_isHighSurrogate(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 318
    const v0, 0xd800

    if-lt p0, v0, :cond_0

    const v0, 0xdbff

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static access$0()Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .locals 1

    .prologue
    .line 87
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-object v0
.end method

.method static access$1()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static access$2(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V
    .locals 0

    .prologue
    .line 1073
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->attemptReconnect()V

    return-void
.end method

.method static access$3(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Z)V
    .locals 0

    .prologue
    .line 104
    iput-boolean p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnecting:Z

    return-void
.end method

.method static access$4(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V
    .locals 0

    .prologue
    .line 1108
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->startReconnectCycle()V

    return-void
.end method

.method static access$5(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V
    .locals 0

    .prologue
    .line 1116
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->stopReconnectCycle()V

    return-void
.end method

.method static access$6()I
    .locals 1

    .prologue
    .line 103
    sget v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    return v0
.end method

.method static access$7(I)V
    .locals 0

    .prologue
    .line 103
    sput p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    return-void
.end method

.method static access$8(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;I)V
    .locals 0

    .prologue
    .line 1125
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->rescheduleReconnectCycle(I)V

    return-void
.end method

.method private attemptReconnect()V
    .locals 9

    .prologue
    const/4 v4, 0x0

    .line 1076
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "attemptReconnect"

    const-string v3, "500"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-interface {v0, v1, v2, v3, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1078
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->userContext:Ljava/lang/Object;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;

    invoke-direct {v2, p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$2;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;)V

    invoke-virtual {p0, v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttSecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_1

    .line 1103
    :goto_0
    return-void

    .line 1096
    :catch_0
    move-exception v5

    .line 1098
    .local v5, "ex":Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "attemptReconnect"

    const-string v3, "804"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1099
    .end local v5    # "ex":Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
    :catch_1
    move-exception v5

    .line 1101
    .local v5, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "attemptReconnect"

    const-string v3, "804"

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private createNetworkModule(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .locals 19
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 367
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v7, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v8, "createNetworkModule"

    const-string v9, "115"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object p1, v10, v11

    invoke-interface {v4, v7, v8, v9, v10}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 375
    .local v3, "factory":Ljavax/net/SocketFactory;
    invoke-static/range {p1 .. p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->validateURI(Ljava/lang/String;)I

    move-result v15

    .line 377
    .local v15, "serverURIType":I
    packed-switch v15, :pswitch_data_0

    .line 469
    const/4 v2, 0x0

    .line 471
    .local v2, "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    :cond_0
    :goto_0
    return-object v2

    .line 379
    .end local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    :pswitch_0
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 380
    .local v16, "shortAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 381
    .local v5, "host":Ljava/lang/String;
    const/16 v4, 0x75b

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getPort(Ljava/lang/String;I)I

    move-result v6

    .line 382
    .local v6, "port":I
    if-nez v3, :cond_2

    .line 383
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 388
    :cond_1
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    invoke-direct {v2, v3, v5, v6, v4}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .restart local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    move-object v4, v2

    .line 389
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->setConnectTimeout(I)V

    goto :goto_0

    .line 385
    .end local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    :cond_2
    instance-of v4, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_1

    .line 386
    const/16 v4, 0x7d69

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v4

    throw v4

    .line 392
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v16    # "shortAddress":Ljava/lang/String;
    :pswitch_1
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 393
    .restart local v16    # "shortAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 394
    .restart local v5    # "host":Ljava/lang/String;
    const/16 v4, 0x22b3

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getPort(Ljava/lang/String;I)I

    move-result v6

    .line 395
    .restart local v6    # "port":I
    const/4 v14, 0x0

    .line 396
    .local v14, "factoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    if-nez v3, :cond_5

    .line 398
    new-instance v14, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;

    .end local v14    # "factoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    invoke-direct {v14}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 399
    .restart local v14    # "factoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    move-result-object v17

    .line 400
    .local v17, "sslClientProps":Ljava/util/Properties;
    if-eqz v17, :cond_3

    .line 401
    const/4 v4, 0x0

    move-object/from16 v0, v17

    invoke-virtual {v14, v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->initialize(Ljava/util/Properties;Ljava/lang/String;)V

    .line 402
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 413
    .end local v17    # "sslClientProps":Ljava/util/Properties;
    :cond_4
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;

    move-object v4, v3

    check-cast v4, Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    invoke-direct {v2, v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .restart local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    move-object v4, v2

    .line 414
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setSSLhandshakeTimeout(I)V

    .line 416
    if-eqz v14, :cond_0

    .line 417
    const/4 v4, 0x0

    invoke-virtual {v14, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 418
    .local v13, "enabledCiphers":[Ljava/lang/String;
    if-eqz v13, :cond_0

    move-object v4, v2

    .line 419
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;

    invoke-virtual {v4, v13}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setEnabledCiphers([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 408
    .end local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .end local v13    # "enabledCiphers":[Ljava/lang/String;
    :cond_5
    instance-of v4, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_4

    .line 409
    const/16 v4, 0x7d69

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v4

    throw v4

    .line 424
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v14    # "factoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    .end local v16    # "shortAddress":Ljava/lang/String;
    :pswitch_2
    const/4 v4, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 425
    .restart local v16    # "shortAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 426
    .restart local v5    # "host":Ljava/lang/String;
    const/16 v4, 0x50

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getPort(Ljava/lang/String;I)I

    move-result v6

    .line 427
    .restart local v6    # "port":I
    if-nez v3, :cond_7

    .line 428
    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v3

    .line 433
    :cond_6
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    move-object/from16 v4, p1

    invoke-direct/range {v2 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .restart local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    move-object v4, v2

    .line 434
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->setConnectTimeout(I)V

    goto/16 :goto_0

    .line 430
    .end local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    :cond_7
    instance-of v4, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v4, :cond_6

    .line 431
    const/16 v4, 0x7d69

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v4

    throw v4

    .line 437
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v16    # "shortAddress":Ljava/lang/String;
    :pswitch_3
    const/4 v4, 0x6

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 438
    .restart local v16    # "shortAddress":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getHostName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 439
    .restart local v5    # "host":Ljava/lang/String;
    const/16 v4, 0x1bb

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getPort(Ljava/lang/String;I)I

    move-result v6

    .line 440
    .restart local v6    # "port":I
    const/16 v18, 0x0

    .line 441
    .local v18, "wSSFactoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    if-nez v3, :cond_a

    .line 442
    new-instance v18, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;

    .end local v18    # "wSSFactoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    invoke-direct/range {v18 .. v18}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 443
    .restart local v18    # "wSSFactoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getSSLProperties()Ljava/util/Properties;

    move-result-object v17

    .line 444
    .restart local v17    # "sslClientProps":Ljava/util/Properties;
    if-eqz v17, :cond_8

    .line 445
    const/4 v4, 0x0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->initialize(Ljava/util/Properties;Ljava/lang/String;)V

    .line 446
    :cond_8
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v3

    .line 454
    .end local v17    # "sslClientProps":Ljava/util/Properties;
    :cond_9
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModule;

    move-object v8, v3

    check-cast v8, Ljavax/net/ssl/SSLSocketFactory;

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    move-object v7, v2

    move-object/from16 v9, p1

    move-object v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v12}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModule;-><init>(Ljavax/net/ssl/SSLSocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .restart local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    move-object v4, v2

    .line 455
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModule;

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v7

    invoke-virtual {v4, v7}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketSecureNetworkModule;->setSSLhandshakeTimeout(I)V

    .line 457
    if-eqz v18, :cond_0

    .line 458
    const/4 v4, 0x0

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 459
    .restart local v13    # "enabledCiphers":[Ljava/lang/String;
    if-eqz v13, :cond_0

    move-object v4, v2

    .line 460
    check-cast v4, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;

    invoke-virtual {v4, v13}, Lorg/eclipse/paho/client/mqttv3/internal/SSLNetworkModule;->setEnabledCiphers([Ljava/lang/String;)V

    goto/16 :goto_0

    .line 449
    .end local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .end local v13    # "enabledCiphers":[Ljava/lang/String;
    :cond_a
    instance-of v4, v3, Ljavax/net/ssl/SSLSocketFactory;

    if-nez v4, :cond_9

    .line 450
    const/16 v4, 0x7d69

    invoke-static {v4}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v4

    throw v4

    .line 465
    .end local v5    # "host":Ljava/lang/String;
    .end local v6    # "port":I
    .end local v16    # "shortAddress":Ljava/lang/String;
    .end local v18    # "wSSFactoryFactory":Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
    :pswitch_4
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;

    const/16 v4, 0x8

    move-object/from16 v0, p1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/eclipse/paho/client/mqttv3/internal/LocalNetworkModule;-><init>(Ljava/lang/String;)V

    .line 466
    .restart local v2    # "netModule":Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    goto/16 :goto_0

    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static generateClientId()Ljava/lang/String;
    .locals 4

    .prologue
    .line 972
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "paho"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getHostName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    .line 491
    const/16 v1, 0x3a

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 492
    .local v0, "portIndex":I
    if-ne v0, v2, :cond_0

    .line 493
    const/16 v1, 0x2f

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 495
    :cond_0
    if-ne v0, v2, :cond_1

    .line 496
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 498
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getPort(Ljava/lang/String;I)I
    .locals 5
    .param p1, "uri"    # Ljava/lang/String;
    .param p2, "defaultPort"    # I

    .prologue
    const/4 v4, -0x1

    .line 476
    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 477
    .local v1, "portIndex":I
    if-ne v1, v4, :cond_0

    .line 478
    move v0, p2

    .line 487
    .local v0, "port":I
    :goto_0
    return v0

    .line 481
    .end local v0    # "port":I
    :cond_0
    const/16 v3, 0x2f

    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    .line 482
    .local v2, "slashIndex":I
    if-ne v2, v4, :cond_1

    .line 483
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 485
    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .restart local v0    # "port":I
    goto :goto_0
.end method

.method private rescheduleReconnectCycle(I)V
    .locals 10
    .param p1, "delay"    # I

    .prologue
    .line 1126
    const-string v0, "rescheduleReconnectCycle"

    .line 1128
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "505"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Long;

    sget v7, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectTimer:Ljava/util/Timer;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;)V

    sget v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1131
    return-void
.end method

.method private startReconnectCycle()V
    .locals 10

    .prologue
    .line 1109
    const-string v0, "startReconnectCycle"

    .line 1111
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "503"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    new-instance v6, Ljava/lang/Long;

    sget v7, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    int-to-long v8, v7

    invoke-direct {v6, v8, v9}, Ljava/lang/Long;-><init>(J)V

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1112
    new-instance v1, Ljava/util/Timer;

    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "MQTT Reconnect: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/Timer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectTimer:Ljava/util/Timer;

    .line 1113
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectTimer:Ljava/util/Timer;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$ReconnectTask;)V

    sget v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 1114
    return-void
.end method

.method private stopReconnectCycle()V
    .locals 7

    .prologue
    .line 1117
    const-string v0, "stopReconnectCycle"

    .line 1119
    .local v0, "methodName":Ljava/lang/String;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "504"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v1, v2, v0, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1120
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectTimer:Ljava/util/Timer;

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    .line 1121
    const/16 v1, 0x3e8

    sput v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnectDelay:I

    .line 1123
    return-void
.end method


# virtual methods
.method public checkPing(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 5
    .param p1, "userContext"    # Ljava/lang/Object;
    .param p2, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 770
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "ping"

    const-string v4, "117"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->checkForActivity()Lorg/eclipse/paho/client/mqttv3/MqttToken;

    move-result-object v0

    .line 774
    .local v0, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v3, "ping"

    const-string v4, "118"

    invoke-interface {v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    return-object v0
.end method

.method public close()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 1171
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "113"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->close()V

    .line 1174
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "close"

    const-string v3, "114"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1176
    return-void
.end method

.method public connect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 513
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .param p1, "userContext"    # Ljava/lang/Object;
    .param p2, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 506
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;-><init>()V

    invoke-virtual {p0, v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .param p1, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public connect(Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 12
    .param p1, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .param p2, "userContext"    # Ljava/lang/Object;
    .param p3, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x0

    .line 529
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 530
    const/16 v1, 0x7d64

    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v1

    throw v1

    .line 532
    :cond_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnecting()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 533
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6e

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 535
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 536
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d66

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 538
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v2, 0x7d6f

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v1

    .line 542
    :cond_3
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->connOpts:Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;

    .line 543
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->userContext:Ljava/lang/Object;

    .line 544
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isAutomaticReconnect()Z

    move-result v9

    .line 547
    .local v9, "automaticReconnect":Z
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "connect"

    const-string v6, "103"

    .line 548
    const/16 v1, 0x8

    new-array v7, v1, [Ljava/lang/Object;

    .line 549
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->isCleanSession()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v7, v11

    const/4 v1, 0x1

    .line 550
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getConnectionTimeout()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v1

    const/4 v1, 0x2

    .line 551
    new-instance v8, Ljava/lang/Integer;

    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getKeepAliveInterval()I

    move-result v10

    invoke-direct {v8, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v8, v7, v1

    const/4 v1, 0x3

    .line 552
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getUserName()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v1

    const/4 v8, 0x4

    .line 553
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getPassword()[C

    move-result-object v1

    if-nez v1, :cond_5

    const-string v1, "[null]"

    :goto_0
    aput-object v1, v7, v8

    const/4 v8, 0x5

    .line 554
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getWillMessage()Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v1

    if-nez v1, :cond_6

    const-string v1, "[null]"

    :goto_1
    aput-object v1, v7, v8

    const/4 v1, 0x6

    .line 555
    aput-object p2, v7, v1

    const/4 v1, 0x7

    .line 556
    aput-object p3, v7, v1

    .line 547
    invoke-interface {v2, v3, v4, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 557
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->serverURI:Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->createNetworkModules(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModules([Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;)V

    .line 558
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;

    invoke-direct {v2, p0, v9}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient$1;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Z)V

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setReconnectCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;)V

    .line 581
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v5, v1}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 582
    .local v5, "userToken":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->persistence:Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    iget-boolean v8, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->reconnecting:Z

    move-object v1, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p3

    invoke-direct/range {v0 .. v8}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;-><init>(Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;Lorg/eclipse/paho/client/mqttv3/MqttToken;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Z)V

    .line 583
    .local v0, "connectActionListener":Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;
    invoke-virtual {v5, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 584
    invoke-virtual {v5, p0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 587
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    instance-of v1, v1, Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    if-eqz v1, :cond_4

    .line 588
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    check-cast v1, Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->setMqttCallbackExtended(Lorg/eclipse/paho/client/mqttv3/MqttCallbackExtended;)V

    .line 591
    :cond_4
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1, v11}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setNetworkModuleIndex(I)V

    .line 592
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;->connect()V

    .line 594
    return-object v5

    .line 553
    .end local v0    # "connectActionListener":Lorg/eclipse/paho/client/mqttv3/internal/ConnectActionListener;
    .end local v5    # "userToken":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :cond_5
    const-string v1, "[notnull]"

    goto :goto_0

    .line 554
    :cond_6
    const-string v1, "[notnull]"

    goto :goto_1
.end method

.method protected createNetworkModules(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    .locals 11
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "options"    # Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 334
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "createNetworkModules"

    const-string v7, "116"

    new-array v8, v10, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 336
    const/4 v2, 0x0

    .line 337
    .local v2, "networkModules":[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;
    invoke-virtual {p2}, Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;->getServerURIs()[Ljava/lang/String;

    move-result-object v3

    .line 338
    .local v3, "serverURIs":[Ljava/lang/String;
    const/4 v0, 0x0

    .line 339
    .local v0, "array":[Ljava/lang/String;
    if-nez v3, :cond_0

    .line 340
    new-array v0, v10, [Ljava/lang/String;

    .end local v0    # "array":[Ljava/lang/String;
    aput-object p1, v0, v9

    .line 347
    .restart local v0    # "array":[Ljava/lang/String;
    :goto_0
    array-length v4, v0

    new-array v2, v4, [Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    .line 348
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v4, v0

    if-lt v1, v4, :cond_2

    .line 352
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "createNetworkModules"

    const-string v7, "108"

    invoke-interface {v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 353
    return-object v2

    .line 341
    .end local v1    # "i":I
    :cond_0
    array-length v4, v3

    if-nez v4, :cond_1

    .line 342
    new-array v0, v10, [Ljava/lang/String;

    .end local v0    # "array":[Ljava/lang/String;
    aput-object p1, v0, v9

    .line 343
    .restart local v0    # "array":[Ljava/lang/String;
    goto :goto_0

    .line 344
    :cond_1
    move-object v0, v3

    goto :goto_0

    .line 349
    .restart local v1    # "i":I
    :cond_2
    aget-object v4, v0, v1

    invoke-direct {p0, v4, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->createNetworkModule(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttConnectOptions;)Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v4

    aput-object v4, v2, v1

    .line 348
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public deleteBufferedMessage(I)V
    .locals 1
    .param p1, "bufferIndex"    # I

    .prologue
    .line 1159
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->deleteBufferedMessage(I)V

    .line 1160
    return-void
.end method

.method public disconnect()Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 608
    invoke-virtual {p0, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(J)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .param p1, "quiesceTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 615
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 11
    .param p1, "quiesceTimeout"    # J
    .param p3, "userContext"    # Ljava/lang/Object;
    .param p4, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 624
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "104"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v8, 0x0

    new-instance v9, Ljava/lang/Long;

    invoke-direct {v9, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v9, v4, v8

    const/4 v8, 0x1

    aput-object p3, v4, v8

    const/4 v8, 0x2

    aput-object p4, v4, v8

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 626
    new-instance v7, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 627
    .local v7, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    invoke-virtual {v7, p4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 628
    invoke-virtual {v7, p3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 630
    new-instance v6, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;

    invoke-direct {v6}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;-><init>()V

    .line 632
    .local v6, "disconnect":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, v6, p1, p2, v7}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnect(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttDisconnect;JLorg/eclipse/paho/client/mqttv3/MqttToken;)V
    :try_end_0
    .catch Lorg/eclipse/paho/client/mqttv3/MqttException; {:try_start_0 .. :try_end_0} :catch_0

    .line 639
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "108"

    invoke-interface {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    return-object v7

    .line 633
    :catch_0
    move-exception v5

    .line 635
    .local v5, "ex":Lorg/eclipse/paho/client/mqttv3/MqttException;
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "disconnect"

    const-string v3, "105"

    const/4 v4, 0x0

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 636
    throw v5
.end method

.method public disconnect(Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 2
    .param p1, "userContext"    # Ljava/lang/Object;
    .param p2, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 601
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnect(JLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public disconnectForcibly()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 649
    const-wide/16 v0, 0x7530

    const-wide/16 v2, 0x2710

    invoke-virtual {p0, v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(JJ)V

    .line 650
    return-void
.end method

.method public disconnectForcibly(J)V
    .locals 3
    .param p1, "disconnectTimeout"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 657
    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->disconnectForcibly(JJ)V

    .line 658
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
    .line 665
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->disconnectForcibly(JJ)V

    .line 666
    return-void
.end method

.method public getBufferedMessage(I)Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .locals 1
    .param p1, "bufferIndex"    # I

    .prologue
    .line 1155
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getBufferedMessage(I)Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    move-result-object v0

    return-object v0
.end method

.method public getBufferedMessageCount()I
    .locals 1

    .prologue
    .line 1151
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getBufferedMessageCount()I

    move-result v0

    return v0
.end method

.method public getClientId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 679
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentServerURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 701
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModules()[Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getNetworkModuleIndex()I

    move-result v1

    aget-object v0, v0, v1

    invoke-interface {v0}, Lorg/eclipse/paho/client/mqttv3/internal/NetworkModule;->getServerURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDebug()Lorg/eclipse/paho/client/mqttv3/util/Debug;
    .locals 3

    .prologue
    .line 1182
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/util/Debug;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/paho/client/mqttv3/util/Debug;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    return-object v0
.end method

.method public getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1

    .prologue
    .line 979
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->getPendingDeliveryTokens()[Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 1

    .prologue
    .line 686
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->serverURI:Ljava/lang/String;

    return-object v0
.end method

.method protected getTopic(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    .line 747
    const/4 v1, 0x0

    invoke-static {p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    .line 749
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->topics:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    .line 750
    .local v0, "result":Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    if-nez v0, :cond_0

    .line 751
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttTopic;

    .end local v0    # "result":Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-direct {v0, p1, v1}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;)V

    .line 752
    .restart local v0    # "result":Lorg/eclipse/paho/client/mqttv3/MqttTopic;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->topics:Ljava/util/Hashtable;

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 754
    :cond_0
    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 672
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

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
    .line 958
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->messageArrivedComplete(II)V

    .line 959
    return-void
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 1
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 1005
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 10
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .param p3, "userContext"    # Ljava/lang/Object;
    .param p4, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1015
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "publish"

    const-string v5, "111"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object p1, v6, v8

    aput-object p3, v6, v9

    const/4 v7, 0x2

    aput-object p4, v6, v7

    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1018
    invoke-static {p1, v8}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    .line 1020
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;-><init>(Ljava/lang/String;)V

    .line 1021
    .local v1, "token":Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;
    invoke-virtual {v1, p4}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 1022
    invoke-virtual {v1, p3}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->setUserContext(Ljava/lang/Object;)V

    .line 1023
    invoke-virtual {v1, p2}, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->setMessage(Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 1024
    iget-object v2, v1, Lorg/eclipse/paho/client/mqttv3/MqttDeliveryToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    new-array v3, v9, [Ljava/lang/String;

    aput-object p1, v3, v8

    invoke-virtual {v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setTopics([Ljava/lang/String;)V

    .line 1026
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;-><init>(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;)V

    .line 1027
    .local v0, "pubMsg":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttPublish;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v2, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 1030
    sget-object v2, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v4, "publish"

    const-string v5, "112"

    invoke-interface {v2, v3, v4, v5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1032
    return-object v1
.end method

.method public publish(Ljava/lang/String;[BIZ)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 7
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
    const/4 v5, 0x0

    .line 998
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v6, v5

    invoke-virtual/range {v0 .. v6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v0

    return-object v0
.end method

.method public publish(Ljava/lang/String;[BIZLjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;
    .locals 2
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "payload"    # [B
    .param p3, "qos"    # I
    .param p4, "retained"    # Z
    .param p5, "userContext"    # Ljava/lang/Object;
    .param p6, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;,
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 988
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-direct {v0, p2}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;-><init>([B)V

    .line 989
    .local v0, "message":Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setQos(I)V

    .line 990
    invoke-virtual {v0, p4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->setRetained(Z)V

    .line 991
    invoke-virtual {p0, p1, v0, p5, p6}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->publish(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttDeliveryToken;

    move-result-object v1

    return-object v1
.end method

.method public reconnect()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 1042
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v2, "reconnect"

    const-string v3, "500"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->clientId:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1044
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1045
    const/16 v0, 0x7d64

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->createMqttException(I)Lorg/eclipse/paho/client/mqttv3/MqttException;

    move-result-object v0

    throw v0

    .line 1047
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isConnecting()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1048
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6e

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 1050
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isDisconnecting()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1051
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d66

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 1053
    :cond_2
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1054
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttException;

    const/16 v1, 0x7d6f

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(I)V

    throw v0

    .line 1057
    :cond_3
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->stopReconnectCycle()V

    .line 1059
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->attemptReconnect()V

    .line 1060
    return-void
.end method

.method public setBufferOpts(Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V
    .locals 2
    .param p1, "bufferOpts"    # Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;

    .prologue
    .line 1147
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;

    invoke-direct {v1, p1}, Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;-><init>(Lorg/eclipse/paho/client/mqttv3/DisconnectedBufferOptions;)V

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setDisconnectedMessageBuffer(Lorg/eclipse/paho/client/mqttv3/internal/DisconnectedMessageBuffer;)V

    .line 1148
    return-void
.end method

.method public setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V
    .locals 1
    .param p1, "callback"    # Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    .prologue
    .line 946
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->mqttCallback:Lorg/eclipse/paho/client/mqttv3/MqttCallback;

    .line 947
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setCallback(Lorg/eclipse/paho/client/mqttv3/MqttCallback;)V

    .line 948
    return-void
.end method

.method public setManualAcks(Z)V
    .locals 1
    .param p1, "manualAcks"    # Z

    .prologue
    .line 954
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setManualAcks(Z)V

    .line 955
    return-void
.end method

.method public subscribe(Ljava/lang/String;I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 4
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "qos"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 790
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1, v3, v3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "qos"    # I
    .param p3, "userContext"    # Ljava/lang/Object;
    .param p4, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 783
    new-array v0, v1, [Ljava/lang/String;

    aput-object p1, v0, v2

    new-array v1, v1, [I

    aput p2, v1, v2

    invoke-virtual {p0, v0, v1, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 6
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "qos"    # I
    .param p3, "userContext"    # Ljava/lang/Object;
    .param p4, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .param p5, "messageListener"    # Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v0, 0x0

    .line 847
    new-array v1, v3, [Ljava/lang/String;

    aput-object p1, v1, v0

    new-array v2, v3, [I

    aput p2, v2, v0

    new-array v5, v3, [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;

    aput-object p5, v5, v0

    move-object v0, p0

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe(Ljava/lang/String;ILorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 6
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "qos"    # I
    .param p3, "messageListener"    # Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    .line 854
    new-array v1, v4, [Ljava/lang/String;

    aput-object p1, v1, v0

    new-array v2, v4, [I

    aput p2, v2, v0

    new-array v5, v4, [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;

    aput-object p3, v5, v0

    move-object v0, p0

    move-object v4, v3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe([Ljava/lang/String;[I)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "qos"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 797
    invoke-virtual {p0, p1, p2, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 11
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "qos"    # [I
    .param p3, "userContext"    # Ljava/lang/Object;
    .param p4, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 806
    array-length v4, p1

    array-length v5, p2

    if-eq v4, v5, :cond_0

    .line 807
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 811
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_1

    .line 815
    const-string v2, ""

    .line 816
    .local v2, "subs":Ljava/lang/String;
    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-lt v0, v4, :cond_2

    .line 826
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "subscribe"

    const-string v7, "106"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    aput-object p3, v8, v10

    const/4 v9, 0x2

    aput-object p4, v8, v9

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 828
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 829
    .local v3, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    invoke-virtual {v3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 830
    invoke-virtual {v3, p3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 831
    iget-object v4, v3, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setTopics([Ljava/lang/String;)V

    .line 833
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;

    invoke-direct {v1, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;-><init>([Ljava/lang/String;[I)V

    .line 835
    .local v1, "register":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 837
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "subscribe"

    const-string v7, "109"

    invoke-interface {v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 839
    return-object v3

    .line 812
    .end local v1    # "register":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttSubscribe;
    .end local v2    # "subs":Ljava/lang/String;
    .end local v3    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->removeMessageListener(Ljava/lang/String;)V

    .line 811
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 817
    .restart local v2    # "subs":Ljava/lang/String;
    :cond_2
    if-lez v0, :cond_3

    .line 818
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 820
    :cond_3
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "topic="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " qos="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    aget v5, p2, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 823
    aget-object v4, p1, v0

    invoke-static {v4, v10}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    .line 816
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1
.end method

.method public subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 5
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "qos"    # [I
    .param p3, "userContext"    # Ljava/lang/Object;
    .param p4, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .param p5, "messageListeners"    # [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 866
    array-length v2, p5

    array-length v3, p2

    if-ne v2, v3, :cond_0

    array-length v2, p2

    array-length v3, p1

    if-eq v2, v3, :cond_1

    .line 867
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2

    .line 870
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v1

    .line 873
    .local v1, "token":Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    if-lt v0, v2, :cond_2

    .line 877
    return-object v1

    .line 874
    :cond_2
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    aget-object v3, p1, v0

    aget-object v4, p5, v0

    invoke-virtual {v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->setMessageListener(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)V

    .line 873
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public subscribe([Ljava/lang/String;[I[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 6
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "qos"    # [I
    .param p3, "messageListeners"    # [Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 861
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->subscribe([Ljava/lang/String;[ILjava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;[Lorg/eclipse/paho/client/mqttv3/IMqttMessageListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 3
    .param p1, "topicFilter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 891
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, v2, v2}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe(Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 2
    .param p1, "topicFilter"    # Ljava/lang/String;
    .param p2, "userContext"    # Ljava/lang/Object;
    .param p3, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 884
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe([Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 1
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 898
    invoke-virtual {p0, p1, v0, v0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;

    move-result-object v0

    return-object v0
.end method

.method public unsubscribe([Ljava/lang/String;Ljava/lang/Object;Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)Lorg/eclipse/paho/client/mqttv3/IMqttToken;
    .locals 11
    .param p1, "topicFilters"    # [Ljava/lang/String;
    .param p2, "userContext"    # Ljava/lang/Object;
    .param p3, "callback"    # Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    .line 906
    const-string v1, ""

    .line 907
    .local v1, "subs":Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-lt v0, v4, :cond_0

    .line 921
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "unsubscribe"

    const-string v7, "107"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    aput-object p2, v8, v10

    const/4 v9, 0x2

    aput-object p3, v8, v9

    invoke-interface {v4, v5, v6, v7, v8}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 924
    const/4 v0, 0x0

    :goto_1
    array-length v4, p1

    if-lt v0, v4, :cond_2

    .line 928
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;

    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->getClientId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/eclipse/paho/client/mqttv3/MqttToken;-><init>(Ljava/lang/String;)V

    .line 929
    .local v2, "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    invoke-virtual {v2, p3}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setActionCallback(Lorg/eclipse/paho/client/mqttv3/IMqttActionListener;)V

    .line 930
    invoke-virtual {v2, p2}, Lorg/eclipse/paho/client/mqttv3/MqttToken;->setUserContext(Ljava/lang/Object;)V

    .line 931
    iget-object v4, v2, Lorg/eclipse/paho/client/mqttv3/MqttToken;->internalTok:Lorg/eclipse/paho/client/mqttv3/internal/Token;

    invoke-virtual {v4, p1}, Lorg/eclipse/paho/client/mqttv3/internal/Token;->setTopics([Ljava/lang/String;)V

    .line 933
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;

    invoke-direct {v3, p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;-><init>([Ljava/lang/String;)V

    .line 935
    .local v3, "unregister":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    invoke-virtual {v4, v3, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->sendNoWait(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;Lorg/eclipse/paho/client/mqttv3/MqttToken;)V

    .line 937
    sget-object v4, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->CLASS_NAME:Ljava/lang/String;

    const-string v6, "unsubscribe"

    const-string v7, "110"

    invoke-interface {v4, v5, v6, v7}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    return-object v2

    .line 908
    .end local v2    # "token":Lorg/eclipse/paho/client/mqttv3/MqttToken;
    .end local v3    # "unregister":Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;
    :cond_0
    if-lez v0, :cond_1

    .line 909
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 911
    :cond_1
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 917
    aget-object v4, p1, v0

    invoke-static {v4, v10}, Lorg/eclipse/paho/client/mqttv3/MqttTopic;->validate(Ljava/lang/String;Z)V

    .line 907
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 925
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/MqttAsyncClient;->comms:Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;

    aget-object v5, p1, v0

    invoke-virtual {v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/ClientComms;->removeMessageListener(Ljava/lang/String;)V

    .line 924
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
