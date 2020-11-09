.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;
.super Ljava/lang/Object;
.source "WebSocketHandshake.java"


# static fields
.field private static final ACCEPT_SALT:Ljava/lang/String; = "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

.field private static final EMPTY:Ljava/lang/String; = ""

.field private static final HTTP_HEADER_CONNECTION:Ljava/lang/String; = "connection"

.field private static final HTTP_HEADER_CONNECTION_VALUE:Ljava/lang/String; = "upgrade"

.field private static final HTTP_HEADER_SEC_WEBSOCKET_ACCEPT:Ljava/lang/String; = "sec-websocket-accept"

.field private static final HTTP_HEADER_SEC_WEBSOCKET_PROTOCOL:Ljava/lang/String; = "sec-websocket-protocol"

.field private static final HTTP_HEADER_UPGRADE:Ljava/lang/String; = "upgrade"

.field private static final HTTP_HEADER_UPGRADE_WEBSOCKET:Ljava/lang/String; = "websocket"

.field private static final LINE_SEPARATOR:Ljava/lang/String; = "\r\n"

.field private static final SHA1_PROTOCOL:Ljava/lang/String; = "SHA1"


# instance fields
.field host:Ljava/lang/String;

.field input:Ljava/io/InputStream;

.field output:Ljava/io/OutputStream;

.field port:I

.field uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "input"    # Ljava/io/InputStream;
    .param p2, "output"    # Ljava/io/OutputStream;
    .param p3, "uri"    # Ljava/lang/String;
    .param p4, "host"    # Ljava/lang/String;
    .param p5, "port"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->input:Ljava/io/InputStream;

    .line 58
    iput-object p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->output:Ljava/io/OutputStream;

    .line 59
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->uri:Ljava/lang/String;

    .line 60
    iput-object p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->host:Ljava/lang/String;

    .line 61
    iput p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->port:I

    .line 62
    return-void
.end method

.method private getHeaders(Ljava/util/ArrayList;)Ljava/util/Map;
    .locals 6
    .param p1, "headers"    # Ljava/util/ArrayList;

    .prologue
    .line 162
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 163
    .local v1, "headerMap":Ljava/util/Map;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 168
    return-object v1

    .line 164
    :cond_0
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 165
    .local v2, "headerPre":Ljava/lang/String;
    const-string v4, ":"

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 166
    .local v0, "header":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private receiveHandshakeResponse(Ljava/lang/String;)V
    .locals 10
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 115
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    iget-object v9, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->input:Ljava/io/InputStream;

    invoke-direct {v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 116
    .local v3, "in":Ljava/io/BufferedReader;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 117
    .local v5, "responseLines":Ljava/util/ArrayList;
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 118
    .local v4, "line":Ljava/lang/String;
    if-nez v4, :cond_1

    .line 119
    new-instance v8, Ljava/io/IOException;

    const-string v9, "WebSocket Response header: Invalid response from Server, It may not support WebSockets."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 122
    :cond_0
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 123
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 121
    :cond_1
    const-string v8, ""

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 125
    invoke-direct {p0, v5}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->getHeaders(Ljava/util/ArrayList;)Ljava/util/Map;

    move-result-object v2

    .line 127
    .local v2, "headerMap":Ljava/util/Map;
    const-string v8, "connection"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 128
    .local v0, "connectionHeader":Ljava/lang/String;
    if-eqz v0, :cond_2

    const-string v8, "upgrade"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 129
    :cond_2
    new-instance v8, Ljava/io/IOException;

    const-string v9, "WebSocket Response header: Incorrect connection header"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 132
    :cond_3
    const-string v8, "upgrade"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 133
    .local v7, "upgradeHeader":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    const-string v9, "websocket"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_4

    .line 134
    new-instance v8, Ljava/io/IOException;

    const-string v9, "WebSocket Response header: Incorrect upgrade."

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 137
    :cond_4
    const-string v8, "sec-websocket-protocol"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 138
    .local v6, "secWebsocketProtocolHeader":Ljava/lang/String;
    if-nez v6, :cond_5

    .line 139
    new-instance v8, Ljava/io/IOException;

    const-string v9, "WebSocket Response header: empty sec-websocket-protocol"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 142
    :cond_5
    const-string v8, "sec-websocket-accept"

    invoke-interface {v2, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 143
    new-instance v8, Ljava/io/IOException;

    const-string v9, "WebSocket Response header: Missing Sec-WebSocket-Accept"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 147
    :cond_6
    :try_start_0
    const-string v8, "sec-websocket-accept"

    invoke-interface {v2, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {p0, p1, v8}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->verifyWebSocketKey(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/paho/client/mqttv3/internal/websocket/HandshakeFailedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 154
    return-void

    .line 148
    :catch_0
    move-exception v1

    .line 149
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v8, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 151
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    :catch_1
    move-exception v8

    new-instance v8, Ljava/io/IOException;

    const-string v9, "WebSocket Response header: Incorrect Sec-WebSocket-Key"

    invoke-direct {v8, v9}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method private sendHandshakeRequest(Ljava/lang/String;)V
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :try_start_0
    const-string v1, "/mqtt"

    .line 86
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Ljava/net/URI;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->uri:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 87
    .local v3, "srvUri":Ljava/net/URI;
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 88
    invoke-virtual {v3}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v1

    .line 89
    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v3}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 94
    :cond_0
    new-instance v2, Ljava/io/PrintWriter;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->output:Ljava/io/OutputStream;

    invoke-direct {v2, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 95
    .local v2, "pw":Ljava/io/PrintWriter;
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "GET "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, " HTTP/1.1"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 96
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Host: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->host:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    iget v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->port:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 97
    const-string v4, "Upgrade: websocket\r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 98
    const-string v4, "Connection: Upgrade\r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 99
    new-instance v4, Ljava/lang/StringBuffer;

    const-string v5, "Sec-WebSocket-Key: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\r\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 100
    const-string v4, "Sec-WebSocket-Protocol: mqttv3.1\r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 101
    const-string v4, "Sec-WebSocket-Version: 13\r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    const-string v4, "\r\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 103
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    return-void

    .line 104
    .end local v1    # "path":Ljava/lang/String;
    .end local v2    # "pw":Ljava/io/PrintWriter;
    .end local v3    # "srvUri":Ljava/net/URI;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/net/URISyntaxException;
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private sha1(Ljava/lang/String;)[B
    .locals 3
    .param p1, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 196
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 197
    .local v0, "mDigest":Ljava/security/MessageDigest;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 198
    .local v1, "result":[B
    return-object v1
.end method

.method private verifyWebSocketKey(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "accept"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Lorg/eclipse/paho/client/mqttv3/internal/websocket/HandshakeFailedException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, "258EAFA5-E914-47DA-95CA-C5AB0DC85B11"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->sha1(Ljava/lang/String;)[B

    move-result-object v1

    .line 183
    .local v1, "sha1Bytes":[B
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encodeBytes([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 184
    .local v0, "encodedSha1Bytes":Ljava/lang/String;
    invoke-virtual {v0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 185
    new-instance v2, Lorg/eclipse/paho/client/mqttv3/internal/websocket/HandshakeFailedException;

    invoke-direct {v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/HandshakeFailedException;-><init>()V

    throw v2

    .line 187
    :cond_0
    return-void
.end method


# virtual methods
.method public execute()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "mqtt-"

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "key":Ljava/lang/String;
    invoke-static {v1}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/Base64;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, "b64Key":Ljava/lang/String;
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->sendHandshakeRequest(Ljava/lang/String;)V

    .line 74
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketHandshake;->receiveHandshakeResponse(Ljava/lang/String;)V

    .line 75
    return-void
.end method
