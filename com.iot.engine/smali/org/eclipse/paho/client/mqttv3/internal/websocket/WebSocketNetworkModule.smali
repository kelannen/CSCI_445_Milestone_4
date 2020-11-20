.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;
.super Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;
.source "WebSocketNetworkModule.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field static class$0:Ljava/lang/Class;

.field private static final log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# instance fields
.field private host:Ljava/lang/String;

.field private outputStream:Ljava/io/ByteArrayOutputStream;

.field private pipedInputStream:Ljava/io/PipedInputStream;

.field private port:I

.field recievedPayload:Ljava/nio/ByteBuffer;

.field private uri:Ljava/lang/String;

.field private webSocketReceiver:Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.websocket.WebSocketNetworkModule"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->CLASS_NAME:Ljava/lang/String;

    .line 35
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->CLASS_NAME:Ljava/lang/String;

    invoke-static {v0, v1}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    return-void

    .line 34
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljavax/net/SocketFactory;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/SocketFactory;
    .param p2, "uri"    # Ljava/lang/String;
    .param p3, "host"    # Ljava/lang/String;
    .param p4, "port"    # I
    .param p5, "resourceContext"    # Ljava/lang/String;

    .prologue
    .line 66
    invoke-direct {p0, p1, p3, p4, p5}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;-><init>(Ljavax/net/SocketFactory;Ljava/lang/String;ILjava/lang/String;)V

    .line 49
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule$1;

    invoke-direct {v0, p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule$1;-><init>(Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->outputStream:Ljava/io/ByteArrayOutputStream;

    .line 67
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->uri:Ljava/lang/String;

    .line 68
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->host:Ljava/lang/String;

    .line 69
    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->port:I

    .line 70
    new-instance v0, Ljava/io/PipedInputStream;

    invoke-direct {v0}, Ljava/io/PipedInputStream;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->pipedInputStream:Ljava/io/PipedInputStream;

    .line 72
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->log:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    invoke-interface {v0, p5}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->setResourceName(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method static access$0(Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->getSocketOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method

.method private getSocketInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 88
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private getSocketOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getInputStream()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->pipedInputStream:Ljava/io/PipedInputStream;

    return-object v0
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->outputStream:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public getServerURI()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ws://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->host:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 76
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->start()V

    .line 77
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->getSocketInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->getSocketOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->uri:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->host:Ljava/lang/String;

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->port:I

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;-><init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V

    .line 78
    .local v0, "handshake":Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->execute()V

    .line 79
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;

    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->getSocketInputStream()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->pipedInputStream:Ljava/io/PipedInputStream;

    invoke-direct {v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;-><init>(Ljava/io/InputStream;Ljava/io/PipedInputStream;)V

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->webSocketReceiver:Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;

    .line 80
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->webSocketReceiver:Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;

    const-string v2, "webSocketReceiver"

    invoke-virtual {v1, v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;->start(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public stop()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;

    const/16 v2, 0x8

    const/4 v3, 0x1

    const-string v4, "1000"

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v0, v2, v3, v4}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;-><init>(BZ[B)V

    .line 105
    .local v0, "frame":Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;
    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->encodeFrame()[B

    move-result-object v1

    .line 106
    .local v1, "rawFrame":[B
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->getSocketOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/io/OutputStream;->write([B)V

    .line 107
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->getSocketOutputStream()Ljava/io/OutputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    .line 109
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->webSocketReceiver:Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketNetworkModule;->webSocketReceiver:Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;

    invoke-virtual {v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketReceiver;->stop()V

    .line 112
    :cond_0
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/TCPNetworkModule;->stop()V

    .line 113
    return-void
.end method
