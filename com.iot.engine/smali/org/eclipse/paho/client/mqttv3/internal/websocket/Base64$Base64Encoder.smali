.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;
.super Ljava/util/prefs/AbstractPreferences;
.source "Base64.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Base64Encoder"
.end annotation


# instance fields
.field private base64String:Ljava/lang/String;

.field final this$0:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;


# direct methods
.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->this$0:Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;

    .line 44
    const-string v0, ""

    invoke-direct {p0, v1, v0}, Ljava/util/prefs/AbstractPreferences;-><init>(Ljava/util/prefs/AbstractPreferences;Ljava/lang/String;)V

    .line 41
    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->base64String:Ljava/lang/String;

    .line 45
    return-void
.end method


# virtual methods
.method protected childSpi(Ljava/lang/String;)Ljava/util/prefs/AbstractPreferences;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 82
    const/4 v0, 0x0

    return-object v0
.end method

.method protected childrenNamesSpi()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method protected flushSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 93
    return-void
.end method

.method public getBase64String()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->base64String:Ljava/lang/String;

    return-object v0
.end method

.method protected getSpi(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 58
    const/4 v0, 0x0

    return-object v0
.end method

.method protected keysSpi()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method protected putSpi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64$Base64Encoder;->base64String:Ljava/lang/String;

    .line 50
    return-void
.end method

.method protected removeNodeSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 68
    return-void
.end method

.method protected removeSpi(Ljava/lang/String;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 63
    return-void
.end method

.method protected syncSpi()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/prefs/BackingStoreException;
        }
    .end annotation

    .prologue
    .line 88
    return-void
.end method
