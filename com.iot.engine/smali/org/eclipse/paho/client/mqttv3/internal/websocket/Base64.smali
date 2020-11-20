.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;
.super Ljava/lang/Object;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;
    }
.end annotation


# static fields
.field private static final encoder:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

.field private static final instance:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;-><init>()V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->instance:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;

    .line 24
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->instance:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;)V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encoder:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 27
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encoder:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

    const-string v2, "akey"

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->putByteArray(Ljava/lang/String;[B)V

    .line 28
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encoder:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->getBase64String()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method

.method public static encodeBytes([B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # [B

    .prologue
    .line 33
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encoder:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

    const-string v2, "aKey"

    invoke-virtual {v1, v2, p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->putByteArray(Ljava/lang/String;[B)V

    .line 34
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encoder:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;

    invoke-virtual {v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->getBase64String()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "result":Ljava/lang/String;
    return-object v0
.end method
