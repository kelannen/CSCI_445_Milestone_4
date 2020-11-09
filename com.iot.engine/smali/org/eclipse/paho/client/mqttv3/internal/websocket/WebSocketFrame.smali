.class public Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;
.super Ljava/lang/Object;
.source "WebSocketFrame.java"


# static fields
.field public static final frameLengthOverhead:I = 0x6


# instance fields
.field private closeFlag:Z

.field private fin:Z

.field private opcode:B

.field private payload:[B


# direct methods
.method public constructor <init>(BZ[B)V
    .locals 1
    .param p1, "opcode"    # B
    .param p2, "fin"    # Z
    .param p3, "payload"    # [B

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->closeFlag:Z

    .line 56
    iput-byte p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    .line 57
    iput-boolean p2, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->fin:Z

    .line 58
    iput-object p3, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    .line 59
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 14
    .param p1, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v13, 0x4

    const/4 v5, 0x1

    const/4 v10, 0x0

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->closeFlag:Z

    .line 133
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v2, v11

    .line 134
    .local v2, "firstByte":B
    invoke-direct {p0, v2}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->setFinAndOpCode(B)V

    .line 135
    iget-byte v11, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    const/4 v12, 0x2

    if-ne v11, v12, :cond_9

    .line 136
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v4, v11

    .line 137
    .local v4, "maskLengthByte":B
    and-int/lit16 v11, v4, 0x80

    if-eqz v11, :cond_4

    .line 138
    .local v5, "masked":Z
    :goto_0
    and-int/lit8 v11, v4, 0x7f

    int-to-byte v8, v11

    .line 139
    .local v8, "payloadLength":I
    const/4 v0, 0x0

    .line 140
    .local v0, "byteCount":I
    const/16 v11, 0x7f

    if-ne v8, v11, :cond_5

    .line 142
    const/16 v0, 0x8

    .line 149
    :cond_0
    :goto_1
    if-lez v0, :cond_1

    .line 150
    const/4 v8, 0x0

    .line 152
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_6

    .line 158
    const/4 v6, 0x0

    .line 159
    .local v6, "maskingKey":[B
    if-eqz v5, :cond_2

    .line 160
    new-array v6, v13, [B

    .line 161
    invoke-virtual {p1, v6, v10, v13}, Ljava/io/InputStream;->read([BII)I

    .line 164
    :cond_2
    new-array v10, v8, [B

    iput-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    .line 165
    const/4 v7, 0x0

    .line 166
    .local v7, "offsetIndex":I
    move v9, v8

    .line 167
    .local v9, "tempLength":I
    const/4 v1, 0x0

    .line 168
    .local v1, "bytesRead":I
    :goto_3
    if-ne v7, v8, :cond_7

    .line 176
    if-eqz v5, :cond_3

    .line 178
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v10, v10

    if-lt v3, v10, :cond_8

    .line 191
    .end local v0    # "byteCount":I
    .end local v1    # "bytesRead":I
    .end local v3    # "i":I
    .end local v4    # "maskLengthByte":B
    .end local v5    # "masked":Z
    .end local v6    # "maskingKey":[B
    .end local v7    # "offsetIndex":I
    .end local v8    # "payloadLength":I
    .end local v9    # "tempLength":I
    :cond_3
    :goto_5
    return-void

    .restart local v4    # "maskLengthByte":B
    :cond_4
    move v5, v10

    .line 137
    goto :goto_0

    .line 143
    .restart local v0    # "byteCount":I
    .restart local v5    # "masked":Z
    .restart local v8    # "payloadLength":I
    :cond_5
    const/16 v11, 0x7e

    if-ne v8, v11, :cond_0

    .line 145
    const/4 v0, 0x2

    goto :goto_1

    .line 153
    :cond_6
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v11

    int-to-byte v4, v11

    .line 154
    and-int/lit16 v11, v4, 0xff

    mul-int/lit8 v12, v0, 0x8

    shl-int/2addr v11, v12

    or-int/2addr v8, v11

    goto :goto_2

    .line 169
    .restart local v1    # "bytesRead":I
    .restart local v6    # "maskingKey":[B
    .restart local v7    # "offsetIndex":I
    .restart local v9    # "tempLength":I
    :cond_7
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    invoke-virtual {p1, v10, v7, v9}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 170
    add-int/2addr v7, v1

    .line 171
    sub-int/2addr v9, v1

    goto :goto_3

    .line 179
    .restart local v3    # "i":I
    :cond_8
    iget-object v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    aget-byte v11, v10, v3

    rem-int/lit8 v12, v3, 0x4

    aget-byte v12, v6, v12

    xor-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v10, v3

    .line 178
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 183
    .end local v0    # "byteCount":I
    .end local v1    # "bytesRead":I
    .end local v3    # "i":I
    .end local v4    # "maskLengthByte":B
    .end local v5    # "masked":Z
    .end local v6    # "maskingKey":[B
    .end local v7    # "offsetIndex":I
    .end local v8    # "payloadLength":I
    .end local v9    # "tempLength":I
    :cond_9
    iget-byte v10, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    const/16 v11, 0x8

    if-ne v10, v11, :cond_a

    .line 185
    iput-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->closeFlag:Z

    goto :goto_5

    .line 187
    :cond_a
    new-instance v10, Ljava/io/IOException;

    new-instance v11, Ljava/lang/StringBuffer;

    const-string v12, "Invalid Frame: Opcode: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iget-byte v12, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public constructor <init>([B)V
    .locals 11
    .param p1, "rawFrame"    # [B

    .prologue
    const/4 v10, 0x4

    const/4 v7, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-boolean v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->closeFlag:Z

    .line 68
    invoke-static {p1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 71
    .local v1, "buffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 72
    .local v0, "b":B
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->setFinAndOpCode(B)V

    .line 75
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 76
    and-int/lit16 v8, v0, 0x80

    if-eqz v8, :cond_3

    const/4 v4, 0x1

    .line 77
    .local v4, "masked":Z
    :goto_0
    and-int/lit8 v8, v0, 0x7f

    int-to-byte v6, v8

    .line 78
    .local v6, "payloadLength":I
    const/4 v2, 0x0

    .line 79
    .local v2, "byteCount":I
    const/16 v8, 0x7f

    if-ne v6, v8, :cond_4

    .line 81
    const/16 v2, 0x8

    .line 88
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, -0x1

    if-gtz v2, :cond_5

    .line 94
    const/4 v5, 0x0

    .line 95
    .local v5, "maskingKey":[B
    if-eqz v4, :cond_1

    .line 96
    new-array v5, v10, [B

    .line 97
    invoke-virtual {v1, v5, v7, v10}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 99
    :cond_1
    new-array v8, v6, [B

    iput-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    .line 100
    iget-object v8, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    invoke-virtual {v1, v8, v7, v6}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 103
    if-eqz v4, :cond_2

    .line 105
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v7, v7

    if-lt v3, v7, :cond_6

    .line 109
    .end local v3    # "i":I
    :cond_2
    return-void

    .end local v2    # "byteCount":I
    .end local v4    # "masked":Z
    .end local v5    # "maskingKey":[B
    .end local v6    # "payloadLength":I
    :cond_3
    move v4, v7

    .line 76
    goto :goto_0

    .line 82
    .restart local v2    # "byteCount":I
    .restart local v4    # "masked":Z
    .restart local v6    # "payloadLength":I
    :cond_4
    const/16 v8, 0x7e

    if-ne v6, v8, :cond_0

    .line 84
    const/4 v2, 0x2

    .line 88
    goto :goto_1

    .line 89
    :cond_5
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    .line 90
    and-int/lit16 v8, v0, 0xff

    mul-int/lit8 v9, v2, 0x8

    shl-int/2addr v8, v9

    or-int/2addr v6, v8

    goto :goto_1

    .line 106
    .restart local v3    # "i":I
    .restart local v5    # "maskingKey":[B
    :cond_6
    iget-object v7, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    aget-byte v8, v7, v3

    rem-int/lit8 v9, v3, 0x4

    aget-byte v9, v5, v9

    xor-int/2addr v8, v9

    int-to-byte v8, v8

    aput-byte v8, v7, v3

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method public static appendFinAndOpCode(Ljava/nio/ByteBuffer;BZ)V
    .locals 2
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "opcode"    # B
    .param p2, "fin"    # Z

    .prologue
    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "b":B
    if-eqz p2, :cond_0

    .line 278
    const/16 v1, 0x80

    int-to-byte v0, v1

    .line 283
    :cond_0
    and-int/lit8 v1, p1, 0xf

    or-int/2addr v1, v0

    int-to-byte v0, v1

    .line 284
    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 285
    return-void
.end method

.method private static appendLength(Ljava/nio/ByteBuffer;IZ)V
    .locals 3
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "masked"    # Z

    .prologue
    const/4 v1, 0x0

    .line 244
    if-gez p1, :cond_0

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Length cannot be negative"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 248
    :cond_0
    if-eqz p2, :cond_1

    const/16 v0, -0x80

    .line 249
    .local v0, "b":B
    :goto_0
    const v2, 0xffff

    if-le p1, v2, :cond_2

    .line 250
    or-int/lit8 v2, v0, 0x7f

    int-to-byte v2, v2

    invoke-virtual {p0, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 251
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 253
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 254
    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 255
    shr-int/lit8 v1, p1, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 256
    shr-int/lit8 v1, p1, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 257
    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 258
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 266
    :goto_1
    return-void

    .end local v0    # "b":B
    :cond_1
    move v0, v1

    .line 248
    goto :goto_0

    .line 259
    .restart local v0    # "b":B
    :cond_2
    const/16 v1, 0x7e

    if-lt p1, v1, :cond_3

    .line 260
    or-int/lit8 v1, v0, 0x7e

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 261
    shr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 262
    and-int/lit16 v1, p1, 0xff

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1

    .line 264
    :cond_3
    or-int v1, v0, p1

    int-to-byte v1, v1

    invoke-virtual {p0, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    goto :goto_1
.end method

.method public static appendLengthAndMask(Ljava/nio/ByteBuffer;I[B)V
    .locals 1
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;
    .param p1, "length"    # I
    .param p2, "mask"    # [B

    .prologue
    .line 227
    if-eqz p2, :cond_0

    .line 228
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->appendLength(Ljava/nio/ByteBuffer;IZ)V

    .line 229
    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 233
    :goto_0
    return-void

    .line 231
    :cond_0
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->appendLength(Ljava/nio/ByteBuffer;IZ)V

    goto :goto_0
.end method

.method public static generateMaskingKey()[B
    .locals 8

    .prologue
    const/16 v5, 0xff

    .line 294
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 295
    .local v4, "randomGenerator":Ljava/util/Random;
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    .line 296
    .local v0, "a":I
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    .line 297
    .local v1, "b":I
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    .line 298
    .local v2, "c":I
    invoke-virtual {v4, v5}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    .line 299
    .local v3, "d":I
    const/4 v5, 0x4

    new-array v5, v5, [B

    const/4 v6, 0x0

    int-to-byte v7, v0

    aput-byte v7, v5, v6

    const/4 v6, 0x1

    int-to-byte v7, v1

    aput-byte v7, v5, v6

    const/4 v6, 0x2

    int-to-byte v7, v2

    aput-byte v7, v5, v6

    const/4 v6, 0x3

    int-to-byte v7, v3

    aput-byte v7, v5, v6

    return-object v5
.end method

.method private setFinAndOpCode(B)V
    .locals 1
    .param p1, "incomingByte"    # B

    .prologue
    .line 118
    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->fin:Z

    .line 123
    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    .line 125
    return-void

    .line 118
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public encodeFrame()[B
    .locals 7

    .prologue
    .line 199
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v4, v4

    add-int/lit8 v2, v4, 0x6

    .line 201
    .local v2, "length":I
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v4, v4

    const v5, 0xffff

    if-le v4, v5, :cond_1

    .line 202
    add-int/lit8 v2, v2, 0x8

    .line 207
    :cond_0
    :goto_0
    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 208
    .local v0, "buffer":Ljava/nio/ByteBuffer;
    iget-byte v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    iget-boolean v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->fin:Z

    invoke-static {v0, v4, v5}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->appendFinAndOpCode(Ljava/nio/ByteBuffer;BZ)V

    .line 209
    invoke-static {}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->generateMaskingKey()[B

    move-result-object v3

    .line 210
    .local v3, "mask":[B
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v4, v4

    invoke-static {v0, v4, v3}, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->appendLengthAndMask(Ljava/nio/ByteBuffer;I[B)V

    .line 212
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v4, v4

    if-lt v1, v4, :cond_2

    .line 216
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 217
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    return-object v4

    .line 203
    .end local v0    # "buffer":Ljava/nio/ByteBuffer;
    .end local v1    # "i":I
    .end local v3    # "mask":[B
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    array-length v4, v4

    const/16 v5, 0x7e

    if-lt v4, v5, :cond_0

    .line 204
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 213
    .restart local v0    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v1    # "i":I
    .restart local v3    # "mask":[B
    :cond_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    aget-byte v5, v4, v1

    rem-int/lit8 v6, v1, 0x4

    aget-byte v6, v3, v6

    xor-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v1

    invoke-virtual {v0, v5}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 212
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public getOpcode()B
    .locals 1

    .prologue
    .line 33
    iget-byte v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->opcode:B

    return v0
.end method

.method public getPayload()[B
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->payload:[B

    return-object v0
.end method

.method public isCloseFlag()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->closeFlag:Z

    return v0
.end method

.method public isFin()Z
    .locals 1

    .prologue
    .line 37
    iget-boolean v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/websocket/WebSocketFrame;->fin:Z

    return v0
.end method
