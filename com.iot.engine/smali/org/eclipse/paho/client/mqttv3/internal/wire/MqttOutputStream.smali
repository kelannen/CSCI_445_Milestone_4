.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;
.super Ljava/io/OutputStream;
.source "MqttOutputStream.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

.field private out:Ljava/io/BufferedOutputStream;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 33
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.wire.MqttOutputStream"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->CLASS_NAME:Ljava/lang/String;

    .line 34
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 33
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/internal/ClientState;Ljava/io/OutputStream;)V
    .locals 1
    .param p1, "clientState"    # Lorg/eclipse/paho/client/mqttv3/internal/ClientState;
    .param p2, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 40
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    .line 41
    new-instance v0, Ljava/io/BufferedOutputStream;

    invoke-direct {v0, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    .line 42
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->close()V

    .line 46
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 49
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0}, Ljava/io/BufferedOutputStream;->flush()V

    .line 50
    return-void
.end method

.method public write(I)V
    .locals 1
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write(I)V

    .line 64
    return-void
.end method

.method public write(Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;)V
    .locals 11
    .param p1, "message"    # Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x0

    .line 71
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getHeader()[B

    move-result-object v0

    .line 72
    .local v0, "bytes":[B
    invoke-virtual {p1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->getPayload()[B

    move-result-object v4

    .line 75
    .local v4, "pl":[B
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    array-length v6, v0

    invoke-virtual {v5, v0, v10, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 76
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    array-length v6, v0

    invoke-virtual {v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySentBytes(I)V

    .line 78
    const/4 v3, 0x0

    .line 79
    .local v3, "offset":I
    const/16 v1, 0x400

    .line 80
    .local v1, "chunckSize":I
    :goto_0
    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 88
    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    sget-object v6, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->CLASS_NAME:Ljava/lang/String;

    const-string v7, "write"

    const-string v8, "500"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aput-object p1, v9, v10

    invoke-interface {v5, v6, v7, v8, v9}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    return-void

    .line 81
    :cond_0
    array-length v5, v4

    sub-int/2addr v5, v3

    invoke-static {v1, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 82
    .local v2, "length":I
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v5, v4, v3, v2}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 83
    add-int/2addr v3, v1

    .line 84
    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v5, v2}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySentBytes(I)V

    goto :goto_0
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/BufferedOutputStream;->write([B)V

    .line 54
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    array-length v1, p1

    invoke-virtual {v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySentBytes(I)V

    .line 55
    return-void
.end method

.method public write([BII)V
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 58
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->out:Ljava/io/BufferedOutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 59
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttOutputStream;->clientState:Lorg/eclipse/paho/client/mqttv3/internal/ClientState;

    invoke-virtual {v0, p3}, Lorg/eclipse/paho/client/mqttv3/internal/ClientState;->notifySentBytes(I)V

    .line 60
    return-void
.end method
