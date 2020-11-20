.class public Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;
.super Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;
.source "MqttUnsubscribe.java"


# instance fields
.field private count:I

.field private names:[Ljava/lang/String;


# direct methods
.method public constructor <init>(B[B)V
    .locals 6
    .param p1, "info"    # B
    .param p2, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0xa

    .line 50
    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 51
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 52
    .local v0, "bais":Ljava/io/ByteArrayInputStream;
    new-instance v1, Ljava/io/DataInputStream;

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 53
    .local v1, "dis":Ljava/io/DataInputStream;
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->msgId:I

    .line 55
    const/4 v3, 0x0

    iput v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->count:I

    .line 56
    new-array v3, v4, [Ljava/lang/String;

    iput-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    .line 57
    const/4 v2, 0x0

    .line 58
    .local v2, "end":Z
    :goto_0
    if-eqz v2, :cond_0

    .line 65
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    .line 66
    return-void

    .line 60
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    iget v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->count:I

    invoke-virtual {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->decodeUTF8(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 62
    :catch_0
    move-exception v3

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "names"    # [Ljava/lang/String;

    .prologue
    .line 38
    const/16 v0, 0xa

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;-><init>(B)V

    .line 39
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method protected getMessageInfo()B
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->duplicate:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    :goto_0
    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPayload()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 103
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 104
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 105
    .local v1, "dos":Ljava/io/DataOutputStream;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    array-length v4, v4

    if-lt v3, v4, :cond_0

    .line 108
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 109
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    .line 106
    :cond_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {p0, v1, v4}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->encodeUTF8(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    .end local v3    # "i":I
    :catch_0
    move-exception v2

    .line 111
    .local v2, "ex":Ljava/io/IOException;
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v4, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getVariableHeader()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 92
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-direct {v1, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 93
    .local v1, "dos":Ljava/io/DataOutputStream;
    iget v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->msgId:I

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeShort(I)V

    .line 94
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->flush()V

    .line 95
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 96
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v1    # "dos":Ljava/io/DataOutputStream;
    :catch_0
    move-exception v2

    .line 97
    .local v2, "ex":Ljava/io/IOException;
    new-instance v3, Lorg/eclipse/paho/client/mqttv3/MqttException;

    invoke-direct {v3, v2}, Lorg/eclipse/paho/client/mqttv3/MqttException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public isRetryable()Z
    .locals 1

    .prologue
    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 72
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 73
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-super {p0}, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttWireMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    const-string v2, " names:["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->count:I

    if-lt v0, v2, :cond_0

    .line 81
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 82
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 76
    :cond_0
    if-lez v0, :cond_1

    .line 77
    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    :cond_1
    new-instance v2, Ljava/lang/StringBuffer;

    const-string v3, "\""

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/wire/MqttUnsubscribe;->names:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 75
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
