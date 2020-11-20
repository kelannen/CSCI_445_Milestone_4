.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttConnect.java"


# static fields
.field public static final KEY:Ljava/lang/String; = "Con"


# instance fields
.field private MqttVersion:I

.field private cleanSession:Z

.field private clientId:Ljava/lang/String;

.field private keepAliveInterval:I

.field private password:[C

.field private userName:Ljava/lang/String;

.field private willDestination:Ljava/lang/String;

.field private willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;


# direct methods
.method public constructor <init>(B[B)V
    .locals 3
    .param p1, "info"    # B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 53
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 54
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 55
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 57
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    .line 58
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 59
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    .line 60
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->keepAliveInterval:I

    .line 61
    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->clientId:Ljava/lang/String;

    .line 62
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZILjava/lang/String;[CLorg/eclipse/paho/client/mqttv3/MqttMessage;Ljava/lang/String;)V
    .locals 1
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "MqttVersion"    # I
    .param p3, "cleanSession"    # Z
    .param p4, "keepAliveInterval"    # I
    .param p5, "userName"    # Ljava/lang/String;
    .param p6, "password"    # [C
    .param p7, "willMessage"    # Lorg/eclipse/paho/client/mqttv3/MqttMessage;
    .param p8, "willDestination"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 67
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->clientId:Ljava/lang/String;

    .line 68
    iput-boolean p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->cleanSession:Z

    .line 69
    iput p4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->keepAliveInterval:I

    .line 70
    iput-object p5, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    .line 71
    iput-object p6, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    .line 72
    iput-object p7, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    .line 73
    iput-object p8, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willDestination:Ljava/lang/String;

    .line 74
    iput p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->MqttVersion:I

    .line 75
    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 166
    const-string v0, "Con"

    return-object v0
.end method

.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getPayload()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 135
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 136
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 137
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->clientId:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willDestination:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 141
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v3

    array-length v3, v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 142
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v3}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getPayload()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->write([B)V

    .line 145
    :cond_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 146
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 147
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    if-eqz v3, :cond_1

    .line 148
    new-instance v3, Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 151
    :cond_1
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 152
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 153
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 154
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected getVariableHeader()[B
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 93
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 94
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 96
    .local v2, "dos":Ljava/io/DataOutputStream;
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->MqttVersion:I

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 97
    const-string v4, "MQIsdp"

    invoke-virtual {p0, v2, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    .line 102
    :cond_0
    :goto_0
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->MqttVersion:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->write(I)V

    .line 104
    const/4 v1, 0x0

    .line 106
    .local v1, "connectFlags":B
    iget-boolean v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->cleanSession:Z

    if-eqz v4, :cond_1

    .line 107
    const/4 v4, 0x2

    int-to-byte v1, v4

    .line 110
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    if-eqz v4, :cond_2

    .line 111
    or-int/lit8 v4, v1, 0x4

    int-to-byte v1, v4

    .line 112
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->getQos()I

    move-result v4

    shl-int/lit8 v4, v4, 0x3

    or-int/2addr v4, v1

    int-to-byte v1, v4

    .line 113
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->willMessage:Lorg/eclipse/paho/client/mqttv3/MqttMessage;

    invoke-virtual {v4}, Lorg/eclipse/paho/client/mqttv3/MqttMessage;->isRetained()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 114
    or-int/lit8 v4, v1, 0x20

    int-to-byte v1, v4

    .line 118
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->userName:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 119
    or-int/lit16 v4, v1, 0x80

    int-to-byte v1, v4

    .line 120
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->password:[C

    if-eqz v4, :cond_3

    .line 121
    or-int/lit8 v4, v1, 0x40

    int-to-byte v1, v4

    .line 124
    :cond_3
    invoke-virtual {v2, v1}, Ljava/io/DataOutputStream;->write(I)V

    .line 125
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->keepAliveInterval:I

    invoke-virtual {v2, v4}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 126
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 127
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 99
    .end local v1    # "connectFlags":B
    :cond_4
    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->MqttVersion:I

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 100
    const-string v4, "MQTT"

    invoke-virtual {p0, v2, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 128
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v3

    .line 129
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v4, v3}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method public isCleanSession()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->cleanSession:Z

    return v0
.end method

.method public isMessageIdRequired()Z
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->toString()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "rc":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, " clientId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->clientId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " keepAliveInterval "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttConnect;->keepAliveInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    .line 80
    return-object v0
.end method
