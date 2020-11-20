.class public Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;
.super Ljava/lang/Object;
.source "SSLSocketFactoryFactory.java"


# static fields
.field public static final CIPHERSUITES:Ljava/lang/String; = "com.ibm.ssl.enabledCipherSuites"

.field private static final CLASS_NAME:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

.field public static final CLIENTAUTH:Ljava/lang/String; = "com.ibm.ssl.clientAuthentication"

.field public static final DEFAULT_PROTOCOL:Ljava/lang/String; = "TLS"

.field public static final JSSEPROVIDER:Ljava/lang/String; = "com.ibm.ssl.contextProvider"

.field public static final KEYSTORE:Ljava/lang/String; = "com.ibm.ssl.keyStore"

.field public static final KEYSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.keyManager"

.field public static final KEYSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.keyStoreProvider"

.field public static final KEYSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.keyStorePassword"

.field public static final KEYSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.keyStoreType"

.field public static final SSLPROTOCOL:Ljava/lang/String; = "com.ibm.ssl.protocol"

.field public static final SYSKEYMGRALGO:Ljava/lang/String; = "ssl.KeyManagerFactory.algorithm"

.field public static final SYSKEYSTORE:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field public static final SYSKEYSTOREPWD:Ljava/lang/String; = "javax.net.ssl.keyStorePassword"

.field public static final SYSKEYSTORETYPE:Ljava/lang/String; = "javax.net.ssl.keyStoreType"

.field public static final SYSTRUSTMGRALGO:Ljava/lang/String; = "ssl.TrustManagerFactory.algorithm"

.field public static final SYSTRUSTSTORE:Ljava/lang/String; = "javax.net.ssl.trustStore"

.field public static final SYSTRUSTSTOREPWD:Ljava/lang/String; = "javax.net.ssl.trustStorePassword"

.field public static final SYSTRUSTSTORETYPE:Ljava/lang/String; = "javax.net.ssl.trustStoreType"

.field public static final TRUSTSTORE:Ljava/lang/String; = "com.ibm.ssl.trustStore"

.field public static final TRUSTSTOREMGR:Ljava/lang/String; = "com.ibm.ssl.trustManager"

.field public static final TRUSTSTOREPROVIDER:Ljava/lang/String; = "com.ibm.ssl.trustStoreProvider"

.field public static final TRUSTSTOREPWD:Ljava/lang/String; = "com.ibm.ssl.trustStorePassword"

.field public static final TRUSTSTORETYPE:Ljava/lang/String; = "com.ibm.ssl.trustStoreType"

.field private static final key:[B

.field private static final propertyKeys:[Ljava/lang/String;

.field private static final xorTag:Ljava/lang/String; = "{xor}"


# instance fields
.field private configs:Ljava/util/Hashtable;

.field private defaultProperties:Ljava/util/Properties;

.field private logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    .line 134
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.ibm.ssl.protocol"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.ibm.ssl.contextProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 135
    const-string v2, "com.ibm.ssl.keyStore"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.ibm.ssl.keyStorePassword"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.ibm.ssl.keyStoreType"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.ibm.ssl.keyStoreProvider"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.ibm.ssl.keyManager"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 136
    const-string v2, "com.ibm.ssl.trustStore"

    aput-object v2, v0, v1

    const-string v1, "com.ibm.ssl.trustStorePassword"

    aput-object v1, v0, v3

    const/16 v1, 0x9

    const-string v2, "com.ibm.ssl.trustStoreType"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "com.ibm.ssl.trustStoreProvider"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 137
    const-string v2, "com.ibm.ssl.trustManager"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "com.ibm.ssl.clientAuthentication"

    aput-object v2, v0, v1

    .line 134
    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    .line 143
    new-array v0, v3, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    .line 146
    return-void

    .line 143
    :array_0
    .array-data 1
        -0x63t
        -0x59t
        -0x27t
        -0x80t
        0x5t
        -0x48t
        -0x77t
        -0x64t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 179
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    .line 180
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/paho/client/mqttv3/logging/Logger;)V
    .locals 0
    .param p1, "logger"    # Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .prologue
    .line 187
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;-><init>()V

    .line 188
    iput-object p1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    .line 189
    return-void
.end method

.method private checkPropertyKeys(Ljava/util/Properties;)V
    .locals 6
    .param p1, "properties"    # Ljava/util/Properties;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-virtual {p1}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 219
    .local v2, "keys":Ljava/util/Set;
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 220
    .local v0, "i":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_1

    .line 226
    return-void

    .line 221
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 222
    .local v1, "k":Ljava/lang/String;
    invoke-direct {p0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->keyValid(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 223
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v5, " is not a valid IBM SSL property key."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method private convertPassword(Ljava/util/Properties;)V
    .locals 3
    .param p1, "p"    # Ljava/util/Properties;

    .prologue
    .line 374
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 375
    .local v1, "pw":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 376
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "epw":Ljava/lang/String;
    const-string v2, "com.ibm.ssl.keyStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    .end local v0    # "epw":Ljava/lang/String;
    :cond_0
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 380
    if-eqz v1, :cond_1

    const-string v2, "{xor}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 381
    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v0

    .line 382
    .restart local v0    # "epw":Ljava/lang/String;
    const-string v2, "com.ibm.ssl.trustStorePassword"

    invoke-virtual {p1, v2, v0}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    .end local v0    # "epw":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public static deObfuscate(Ljava/lang/String;)[C
    .locals 5
    .param p0, "ePassword"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 299
    if-nez p0, :cond_0

    .line 312
    :goto_0
    return-object v2

    .line 301
    :cond_0
    const/4 v0, 0x0

    .line 303
    .local v0, "bytes":[B
    :try_start_0
    const-string v3, "{xor}"

    .line 304
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    .line 303
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->decode(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 309
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v2, v0

    if-lt v1, v2, :cond_1

    .line 312
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toChar([B)[C

    move-result-object v2

    goto :goto_0

    .line 310
    :cond_1
    aget-byte v2, v0, v1

    sget-object v3, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v4, v4

    rem-int v4, v1, v4

    aget-byte v3, v3, v4

    xor-int/2addr v2, v3

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 306
    .end local v1    # "i":I
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;
    .param p2, "ibmKey"    # Ljava/lang/String;
    .param p3, "sysProperty"    # Ljava/lang/String;

    .prologue
    .line 791
    const/4 v0, 0x0

    .line 792
    .local v0, "res":Ljava/lang/String;
    invoke-direct {p0, p1, p2}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 793
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 800
    .end local v0    # "res":Ljava/lang/String;
    .local v1, "res":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 797
    .end local v1    # "res":Ljava/lang/String;
    .restart local v0    # "res":Ljava/lang/String;
    :cond_0
    if-eqz p3, :cond_1

    .line 798
    invoke-static {p3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    move-object v1, v0

    .line 800
    .end local v0    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method private getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;
    .param p2, "ibmKey"    # Ljava/lang/String;

    .prologue
    .line 815
    const/4 v1, 0x0

    .line 816
    .local v1, "res":Ljava/lang/String;
    const/4 v0, 0x0

    .line 817
    .local v0, "p":Ljava/util/Properties;
    if-eqz p1, :cond_0

    .line 818
    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v3, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 820
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_0
    if-eqz v0, :cond_1

    .line 821
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 822
    if-eqz v1, :cond_1

    move-object v2, v1

    .line 832
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 826
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 827
    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0, p2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 829
    if-eqz v1, :cond_2

    move-object v2, v1

    .line 830
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0

    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_2
    move-object v2, v1

    .line 832
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method private getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;
    .locals 33
    .param p1, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 1109
    const/4 v4, 0x0

    .line 1111
    .local v4, "ctx":Ljavax/net/ssl/SSLContext;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 1112
    .local v15, "protocol":Ljava/lang/String;
    if-nez v15, :cond_0

    .line 1113
    const-string v15, "TLS"

    .line 1115
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_1

    .line 1117
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12000"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_12

    move-object/from16 v26, p1

    :goto_0
    aput-object v26, v31, v32

    const/16 v26, 0x1

    .line 1118
    aput-object v15, v31, v26

    .line 1117
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1121
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1123
    .local v16, "provider":Ljava/lang/String;
    if-nez v16, :cond_13

    .line 1124
    :try_start_0
    invoke-static {v15}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    .line 1128
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_2

    .line 1130
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12001"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_14

    move-object/from16 v26, p1

    :goto_2
    aput-object v26, v31, v32

    const/16 v26, 0x1

    .line 1131
    invoke-virtual {v4}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v31, v26

    .line 1130
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1134
    :cond_2
    const-string v26, "com.ibm.ssl.keyStore"

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1135
    .local v12, "keyStoreName":Ljava/lang/String;
    const/4 v11, 0x0

    .line 1136
    .local v11, "keyStore":Ljava/security/KeyStore;
    const/4 v9, 0x0

    .line 1137
    .local v9, "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    const/4 v7, 0x0

    .line 1152
    .local v7, "keyMgr":[Ljavax/net/ssl/KeyManager;
    if-nez v11, :cond_a

    .line 1153
    if-nez v12, :cond_3

    .line 1158
    const-string v26, "com.ibm.ssl.keyStore"

    const-string v27, "javax.net.ssl.keyStore"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v26

    move-object/from16 v3, v27

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 1160
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_4

    .line 1162
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12004"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_15

    move-object/from16 v26, p1

    :goto_3
    aput-object v26, v31, v32

    const/16 v32, 0x1

    .line 1163
    if-eqz v12, :cond_16

    move-object/from16 v26, v12

    :goto_4
    aput-object v26, v31, v32

    .line 1162
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1166
    :cond_4
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStorePassword(Ljava/lang/String;)[C

    move-result-object v13

    .line 1167
    .local v13, "keyStorePwd":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_5

    .line 1169
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12005"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_17

    move-object/from16 v26, p1

    :goto_5
    aput-object v26, v31, v32

    const/16 v32, 0x1

    .line 1170
    if-eqz v13, :cond_18

    invoke-static {v13}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v26

    :goto_6
    aput-object v26, v31, v32

    .line 1169
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    :cond_5
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1174
    .local v14, "keyStoreType":Ljava/lang/String;
    if-nez v14, :cond_6

    .line 1175
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v14

    .line 1177
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_7

    .line 1179
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12006"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_19

    move-object/from16 v26, p1

    :goto_7
    aput-object v26, v31, v32

    const/16 v32, 0x1

    .line 1180
    if-eqz v14, :cond_1a

    move-object/from16 v26, v14

    :goto_8
    aput-object v26, v31, v32

    .line 1179
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1183
    :cond_7
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v8

    .line 1184
    .local v8, "keyMgrAlgo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1185
    .local v10, "keyMgrProvider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_0 .. :try_end_0} :catch_5

    move-result-object v6

    .line 1186
    .local v6, "keyManager":Ljava/lang/String;
    if-eqz v6, :cond_8

    .line 1187
    move-object v8, v6

    .line 1190
    :cond_8
    if-eqz v12, :cond_a

    if-eqz v14, :cond_a

    if-eqz v8, :cond_a

    .line 1192
    :try_start_1
    invoke-static {v14}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v11

    .line 1193
    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    invoke-direct {v0, v12}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v26

    invoke-virtual {v11, v0, v13}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1194
    if-eqz v10, :cond_1b

    .line 1195
    invoke-static {v8, v10}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    .line 1199
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_9

    .line 1201
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12010"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_1c

    move-object/from16 v26, p1

    :goto_a
    aput-object v26, v31, v32

    const/16 v26, 0x1

    .line 1202
    if-eqz v8, :cond_1d

    .end local v8    # "keyMgrAlgo":Ljava/lang/String;
    :goto_b
    aput-object v8, v31, v26

    .line 1201
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1204
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12009"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_1e

    move-object/from16 v26, p1

    :goto_c
    aput-object v26, v31, v32

    const/16 v26, 0x1

    .line 1205
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v31, v26

    .line 1204
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1207
    :cond_9
    invoke-virtual {v9, v11, v13}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 1208
    invoke-virtual {v9}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    .line 1224
    .end local v6    # "keyManager":Ljava/lang/String;
    .end local v10    # "keyMgrProvider":Ljava/lang/String;
    .end local v13    # "keyStorePwd":[C
    .end local v14    # "keyStoreType":Ljava/lang/String;
    :cond_a
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStore(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    .line 1225
    .local v23, "trustStoreName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_b

    .line 1227
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12011"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_1f

    move-object/from16 v26, p1

    :goto_d
    aput-object v26, v31, v32

    const/16 v32, 0x1

    .line 1228
    if-eqz v23, :cond_20

    move-object/from16 v26, v23

    :goto_e
    aput-object v26, v31, v32

    .line 1227
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1230
    :cond_b
    const/16 v22, 0x0

    .line 1231
    .local v22, "trustStore":Ljava/security/KeyStore;
    const/16 v20, 0x0

    .line 1232
    .local v20, "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    const/16 v18, 0x0

    .line 1233
    .local v18, "trustMgr":[Ljavax/net/ssl/TrustManager;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStorePassword(Ljava/lang/String;)[C

    move-result-object v24

    .line 1234
    .local v24, "trustStorePwd":[C
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_c

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12012"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_21

    move-object/from16 v26, p1

    :goto_f
    aput-object v26, v31, v32

    const/16 v32, 0x1

    .line 1237
    if-eqz v24, :cond_22

    invoke-static/range {v24 .. v24}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->obfuscate([C)Ljava/lang/String;

    move-result-object v26

    :goto_10
    aput-object v26, v31, v32

    .line 1236
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1239
    :cond_c
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    .line 1240
    .local v25, "trustStoreType":Ljava/lang/String;
    if-nez v25, :cond_d

    .line 1241
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v25

    .line 1243
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_e

    .line 1245
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12013"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_23

    move-object/from16 v26, p1

    :goto_11
    aput-object v26, v31, v32

    const/16 v32, 0x1

    .line 1246
    if-eqz v25, :cond_24

    move-object/from16 v26, v25

    :goto_12
    aput-object v26, v31, v32

    .line 1245
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1249
    :cond_e
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v19

    .line 1250
    .local v19, "trustMgrAlgo":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 1251
    .local v21, "trustMgrProvider":Ljava/lang/String;
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_2 .. :try_end_2} :catch_5

    move-result-object v17

    .line 1252
    .local v17, "trustManager":Ljava/lang/String;
    if-eqz v17, :cond_f

    .line 1253
    move-object/from16 v19, v17

    .line 1256
    :cond_f
    if-eqz v23, :cond_11

    if-eqz v25, :cond_11

    if-eqz v19, :cond_11

    .line 1258
    :try_start_3
    invoke-static/range {v25 .. v25}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v22

    .line 1259
    new-instance v26, Ljava/io/FileInputStream;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v22

    move-object/from16 v1, v26

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 1260
    if-eqz v21, :cond_25

    .line 1261
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v20

    .line 1265
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 1268
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v27, v0

    const-string v28, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v29, "getSSLContext"

    const-string v30, "12017"

    const/16 v26, 0x2

    move/from16 v0, v26

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    if-eqz p1, :cond_26

    move-object/from16 v26, p1

    :goto_14
    aput-object v26, v31, v32

    const/16 v26, 0x1

    .line 1269
    if-eqz v19, :cond_27

    .end local v19    # "trustMgrAlgo":Ljava/lang/String;
    :goto_15
    aput-object v19, v31, v26

    .line 1268
    invoke-interface/range {v27 .. v31}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1272
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object/from16 v26, v0

    const-string v27, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v28, "getSSLContext"

    const-string v29, "12016"

    const/16 v30, 0x2

    move/from16 v0, v30

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v30, v0

    const/16 v31, 0x0

    if-eqz p1, :cond_28

    .end local p1    # "configID":Ljava/lang/String;
    :goto_16
    aput-object p1, v30, v31

    const/16 v31, 0x1

    .line 1273
    invoke-virtual/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object v32

    aput-object v32, v30, v31

    .line 1272
    invoke-interface/range {v26 .. v30}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1275
    :cond_10
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 1276
    invoke-virtual/range {v20 .. v20}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;
    :try_end_3
    .catch Ljava/security/KeyStoreException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_5

    move-result-object v18

    .line 1288
    :cond_11
    const/16 v26, 0x0

    :try_start_4
    move-object/from16 v0, v18

    move-object/from16 v1, v26

    invoke-virtual {v4, v7, v0, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_4 .. :try_end_4} :catch_5

    .line 1296
    return-object v4

    .line 1117
    .end local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v11    # "keyStore":Ljava/security/KeyStore;
    .end local v12    # "keyStoreName":Ljava/lang/String;
    .end local v16    # "provider":Ljava/lang/String;
    .end local v17    # "trustManager":Ljava/lang/String;
    .end local v18    # "trustMgr":[Ljavax/net/ssl/TrustManager;
    .end local v20    # "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    .end local v21    # "trustMgrProvider":Ljava/lang/String;
    .end local v22    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "trustStoreName":Ljava/lang/String;
    .end local v24    # "trustStorePwd":[C
    .end local v25    # "trustStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :cond_12
    const-string v26, "null (broker defaults)"

    goto/16 :goto_0

    .line 1126
    .restart local v16    # "provider":Ljava/lang/String;
    :cond_13
    :try_start_5
    invoke-static/range {v15 .. v16}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v4

    goto/16 :goto_1

    .line 1130
    :cond_14
    const-string v26, "null (broker defaults)"

    goto/16 :goto_2

    .line 1162
    .restart local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v11    # "keyStore":Ljava/security/KeyStore;
    .restart local v12    # "keyStoreName":Ljava/lang/String;
    :cond_15
    const-string v26, "null (broker defaults)"

    goto/16 :goto_3

    .line 1163
    :cond_16
    const-string v26, "null"

    goto/16 :goto_4

    .line 1169
    .restart local v13    # "keyStorePwd":[C
    :cond_17
    const-string v26, "null (broker defaults)"

    goto/16 :goto_5

    .line 1170
    :cond_18
    const-string v26, "null"

    goto/16 :goto_6

    .line 1179
    .restart local v14    # "keyStoreType":Ljava/lang/String;
    :cond_19
    const-string v26, "null (broker defaults)"

    goto/16 :goto_7

    .line 1180
    :cond_1a
    const-string v26, "null"
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_8

    .line 1197
    .restart local v6    # "keyManager":Ljava/lang/String;
    .restart local v8    # "keyMgrAlgo":Ljava/lang/String;
    .restart local v10    # "keyMgrProvider":Ljava/lang/String;
    :cond_1b
    :try_start_6
    invoke-static {v8}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v9

    goto/16 :goto_9

    .line 1201
    :cond_1c
    const-string v26, "null (broker defaults)"

    goto/16 :goto_a

    .line 1202
    :cond_1d
    const-string v8, "null"

    goto/16 :goto_b

    .line 1204
    .end local v8    # "keyMgrAlgo":Ljava/lang/String;
    :cond_1e
    const-string v26, "null (broker defaults)"
    :try_end_6
    .catch Ljava/security/KeyStoreException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_6 .. :try_end_6} :catch_5

    goto/16 :goto_c

    .line 1209
    :catch_0
    move-exception v5

    .line 1210
    .local v5, "e":Ljava/security/KeyStoreException;
    :try_start_7
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26
    :try_end_7
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_7 .. :try_end_7} :catch_5

    .line 1289
    .end local v5    # "e":Ljava/security/KeyStoreException;
    .end local v6    # "keyManager":Ljava/lang/String;
    .end local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v10    # "keyMgrProvider":Ljava/lang/String;
    .end local v11    # "keyStore":Ljava/security/KeyStore;
    .end local v12    # "keyStoreName":Ljava/lang/String;
    .end local v13    # "keyStorePwd":[C
    .end local v14    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_1
    move-exception v5

    .line 1290
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1211
    .end local v5    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v6    # "keyManager":Ljava/lang/String;
    .restart local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "keyMgrProvider":Ljava/lang/String;
    .restart local v11    # "keyStore":Ljava/security/KeyStore;
    .restart local v12    # "keyStoreName":Ljava/lang/String;
    .restart local v13    # "keyStorePwd":[C
    .restart local v14    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_2
    move-exception v5

    .line 1212
    .local v5, "e":Ljava/security/cert/CertificateException;
    :try_start_8
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26
    :try_end_8
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_8 .. :try_end_8} :catch_5

    .line 1291
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    .end local v6    # "keyManager":Ljava/lang/String;
    .end local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v10    # "keyMgrProvider":Ljava/lang/String;
    .end local v11    # "keyStore":Ljava/security/KeyStore;
    .end local v12    # "keyStoreName":Ljava/lang/String;
    .end local v13    # "keyStorePwd":[C
    .end local v14    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_3
    move-exception v5

    .line 1292
    .local v5, "e":Ljava/security/NoSuchProviderException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1213
    .end local v5    # "e":Ljava/security/NoSuchProviderException;
    .restart local v6    # "keyManager":Ljava/lang/String;
    .restart local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "keyMgrProvider":Ljava/lang/String;
    .restart local v11    # "keyStore":Ljava/security/KeyStore;
    .restart local v12    # "keyStoreName":Ljava/lang/String;
    .restart local v13    # "keyStorePwd":[C
    .restart local v14    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_4
    move-exception v5

    .line 1214
    .local v5, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26
    :try_end_9
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_9 .. :try_end_9} :catch_5

    .line 1293
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    .end local v6    # "keyManager":Ljava/lang/String;
    .end local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .end local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .end local v10    # "keyMgrProvider":Ljava/lang/String;
    .end local v11    # "keyStore":Ljava/security/KeyStore;
    .end local v12    # "keyStoreName":Ljava/lang/String;
    .end local v13    # "keyStorePwd":[C
    .end local v14    # "keyStoreType":Ljava/lang/String;
    .end local p1    # "configID":Ljava/lang/String;
    :catch_5
    move-exception v5

    .line 1294
    .local v5, "e":Ljava/security/KeyManagementException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1215
    .end local v5    # "e":Ljava/security/KeyManagementException;
    .restart local v6    # "keyManager":Ljava/lang/String;
    .restart local v7    # "keyMgr":[Ljavax/net/ssl/KeyManager;
    .restart local v9    # "keyMgrFact":Ljavax/net/ssl/KeyManagerFactory;
    .restart local v10    # "keyMgrProvider":Ljava/lang/String;
    .restart local v11    # "keyStore":Ljava/security/KeyStore;
    .restart local v12    # "keyStoreName":Ljava/lang/String;
    .restart local v13    # "keyStorePwd":[C
    .restart local v14    # "keyStoreType":Ljava/lang/String;
    .restart local p1    # "configID":Ljava/lang/String;
    :catch_6
    move-exception v5

    .line 1216
    .local v5, "e":Ljava/io/IOException;
    :try_start_a
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1217
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7
    move-exception v5

    .line 1218
    .local v5, "e":Ljava/security/UnrecoverableKeyException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1227
    .end local v5    # "e":Ljava/security/UnrecoverableKeyException;
    .end local v6    # "keyManager":Ljava/lang/String;
    .end local v10    # "keyMgrProvider":Ljava/lang/String;
    .end local v13    # "keyStorePwd":[C
    .end local v14    # "keyStoreType":Ljava/lang/String;
    .restart local v23    # "trustStoreName":Ljava/lang/String;
    :cond_1f
    const-string v26, "null (broker defaults)"

    goto/16 :goto_d

    .line 1228
    :cond_20
    const-string v26, "null"

    goto/16 :goto_e

    .line 1236
    .restart local v18    # "trustMgr":[Ljavax/net/ssl/TrustManager;
    .restart local v20    # "trustMgrFact":Ljavax/net/ssl/TrustManagerFactory;
    .restart local v22    # "trustStore":Ljava/security/KeyStore;
    .restart local v24    # "trustStorePwd":[C
    :cond_21
    const-string v26, "null (broker defaults)"

    goto/16 :goto_f

    .line 1237
    :cond_22
    const-string v26, "null"

    goto/16 :goto_10

    .line 1245
    .restart local v25    # "trustStoreType":Ljava/lang/String;
    :cond_23
    const-string v26, "null (broker defaults)"

    goto/16 :goto_11

    .line 1246
    :cond_24
    const-string v26, "null"
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_a .. :try_end_a} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_a .. :try_end_a} :catch_5

    goto/16 :goto_12

    .line 1263
    .restart local v17    # "trustManager":Ljava/lang/String;
    .restart local v19    # "trustMgrAlgo":Ljava/lang/String;
    .restart local v21    # "trustMgrProvider":Ljava/lang/String;
    :cond_25
    :try_start_b
    invoke-static/range {v19 .. v19}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v20

    goto/16 :goto_13

    .line 1268
    :cond_26
    const-string v26, "null (broker defaults)"

    goto/16 :goto_14

    .line 1269
    :cond_27
    const-string v19, "null"

    goto/16 :goto_15

    .line 1272
    .end local v19    # "trustMgrAlgo":Ljava/lang/String;
    :cond_28
    const-string p1, "null (broker defaults)"
    :try_end_b
    .catch Ljava/security/KeyStoreException; {:try_start_b .. :try_end_b} :catch_8
    .catch Ljava/security/cert/CertificateException; {:try_start_b .. :try_end_b} :catch_9
    .catch Ljava/io/FileNotFoundException; {:try_start_b .. :try_end_b} :catch_a
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_b .. :try_end_b} :catch_5

    goto/16 :goto_16

    .line 1277
    .end local p1    # "configID":Ljava/lang/String;
    :catch_8
    move-exception v5

    .line 1278
    .local v5, "e":Ljava/security/KeyStoreException;
    :try_start_c
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1279
    .end local v5    # "e":Ljava/security/KeyStoreException;
    :catch_9
    move-exception v5

    .line 1280
    .local v5, "e":Ljava/security/cert/CertificateException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1281
    .end local v5    # "e":Ljava/security/cert/CertificateException;
    :catch_a
    move-exception v5

    .line 1282
    .local v5, "e":Ljava/io/FileNotFoundException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26

    .line 1283
    .end local v5    # "e":Ljava/io/FileNotFoundException;
    :catch_b
    move-exception v5

    .line 1284
    .local v5, "e":Ljava/io/IOException;
    new-instance v26, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;

    move-object/from16 v0, v26

    invoke-direct {v0, v5}, Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v26
    :try_end_c
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/security/NoSuchProviderException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/security/KeyManagementException; {:try_start_c .. :try_end_c} :catch_5
.end method

.method public static isSupportedOnJVM()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/LinkageError;,
            Ljava/lang/ExceptionInInitializerError;
        }
    .end annotation

    .prologue
    .line 164
    const-string v0, "javax.net.ssl.SSLServerSocketFactory"

    .line 166
    .local v0, "requiredClassname":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    const/4 v1, 0x1

    :goto_0
    return v1

    .line 168
    :catch_0
    move-exception v1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method private keyValid(Ljava/lang/String;)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "i":I
    :goto_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_1

    .line 205
    :cond_0
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    return v1

    .line 200
    :cond_1
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->propertyKeys:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 203
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 205
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static obfuscate([C)Ljava/lang/String;
    .locals 6
    .param p0, "password"    # [C

    .prologue
    .line 277
    if-nez p0, :cond_0

    .line 278
    const/4 v1, 0x0

    .line 285
    :goto_0
    return-object v1

    .line 279
    :cond_0
    invoke-static {p0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->toByte([C)[B

    move-result-object v0

    .line 280
    .local v0, "bytes":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v3, v0

    if-lt v2, v3, :cond_1

    .line 283
    new-instance v3, Ljava/lang/StringBuffer;

    const-string v4, "{xor}"

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 284
    new-instance v4, Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SimpleBase64Encoder;->encode([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    .line 283
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 285
    .local v1, "encryptedValue":Ljava/lang/String;
    goto :goto_0

    .line 281
    .end local v1    # "encryptedValue":Ljava/lang/String;
    :cond_1
    aget-byte v3, v0, v2

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->key:[B

    array-length v5, v5

    rem-int v5, v2, v5

    aget-byte v4, v4, v5

    xor-int/2addr v3, v4

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 280
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static packCipherSuites([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "ciphers"    # [Ljava/lang/String;

    .prologue
    .line 323
    const/4 v1, 0x0

    .line 324
    .local v1, "cipherSet":Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 326
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p0

    if-lt v2, v3, :cond_1

    .line 332
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .end local v0    # "buf":Ljava/lang/StringBuffer;
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 327
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    .restart local v2    # "i":I
    :cond_1
    aget-object v3, p0, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_2

    .line 329
    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 326
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static toByte([C)[B
    .locals 6
    .param p0, "c"    # [C

    .prologue
    .line 255
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 262
    :cond_0
    return-object v0

    .line 256
    :cond_1
    array-length v5, p0

    mul-int/lit8 v5, v5, 0x2

    new-array v0, v5, [B

    .line 257
    .local v0, "b":[B
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 258
    .local v3, "j":I
    :goto_0
    array-length v5, p0

    if-ge v3, v5, :cond_0

    .line 259
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-char v5, p0, v3

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v1

    .line 260
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    aget-char v5, p0, v3

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v0, v2

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0
.end method

.method public static toChar([B)[C
    .locals 7
    .param p0, "b"    # [B

    .prologue
    .line 237
    if-nez p0, :cond_1

    const/4 v0, 0x0

    .line 243
    :cond_0
    return-object v0

    .line 238
    :cond_1
    array-length v5, p0

    div-int/lit8 v5, v5, 0x2

    new-array v0, v5, [C

    .line 239
    .local v0, "c":[C
    const/4 v1, 0x0

    .local v1, "i":I
    const/4 v3, 0x0

    .line 240
    .local v3, "j":I
    :goto_0
    array-length v5, p0

    if-ge v1, v5, :cond_0

    .line 241
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "j":I
    .local v4, "j":I
    add-int/lit8 v2, v1, 0x1

    .end local v1    # "i":I
    .local v2, "i":I
    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    aget-byte v6, p0, v2

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x8

    add-int/2addr v5, v6

    int-to-char v5, v5

    aput-char v5, v0, v3

    move v3, v4

    .end local v4    # "j":I
    .restart local v3    # "j":I
    goto :goto_0
.end method

.method public static unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p0, "ciphers"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0x2c

    .line 347
    if-nez p0, :cond_0

    const/4 v3, 0x0

    .line 362
    :goto_0
    return-object v3

    .line 348
    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 349
    .local v0, "c":Ljava/util/Vector;
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 350
    .local v1, "i":I
    const/4 v2, 0x0

    .line 352
    .local v2, "j":I
    :goto_1
    const/4 v4, -0x1

    if-gt v1, v4, :cond_1

    .line 359
    invoke-virtual {p0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 360
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v3, v4, [Ljava/lang/String;

    .line 361
    .local v3, "s":[Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    goto :goto_0

    .line 354
    .end local v3    # "s":[Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 355
    add-int/lit8 v2, v1, 0x1

    .line 356
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    goto :goto_1
.end method


# virtual methods
.method public createSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .locals 9
    .param p1, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttSecurityException;
        }
    .end annotation

    .prologue
    .line 1344
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getSSLContext(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 1345
    .local v0, "ctx":Ljavax/net/ssl/SSLContext;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    if-eqz v1, :cond_0

    .line 1347
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->logger:Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    const-string v3, "org.eclipse.paho.client.mqttv3.internal.security.SSLSocketFactoryFactory"

    const-string v4, "createSocketFactory"

    const-string v5, "12020"

    const/4 v1, 0x2

    new-array v6, v1, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz p1, :cond_1

    move-object v1, p1

    :goto_0
    aput-object v1, v6, v7

    const/4 v7, 0x1

    .line 1348
    invoke-virtual {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    const-string v1, "com.ibm.ssl.enabledCipherSuites"

    const/4 v8, 0x0

    invoke-direct {p0, p1, v1, v8}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    aput-object v1, v6, v7

    .line 1347
    invoke-interface {v2, v3, v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    :cond_0
    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v1

    return-object v1

    .line 1347
    :cond_1
    const-string v1, "null (broker defaults)"

    goto :goto_0

    .line 1348
    :cond_2
    const-string v1, "null (using platform-enabled cipher suites)"

    goto :goto_1
.end method

.method public getClientAuthentication(Ljava/lang/String;)Z
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1087
    const-string v2, "com.ibm.ssl.clientAuthentication"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "auth":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1089
    .local v1, "res":Z
    if-eqz v0, :cond_0

    .line 1090
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 1092
    :cond_0
    return v1
.end method

.method public getConfiguration(Ljava/lang/String;)Ljava/util/Properties;
    .locals 1
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 507
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    :goto_0
    check-cast v0, Ljava/util/Properties;

    return-object v0

    .line 508
    :cond_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getEnabledCipherSuites(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1073
    const-string v2, "com.ibm.ssl.enabledCipherSuites"

    const/4 v3, 0x0

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1074
    .local v0, "ciphers":Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->unpackCipherSuites(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1075
    .local v1, "res":[Ljava/lang/String;
    return-object v1
.end method

.method public getJSSEProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 857
    const-string v0, "com.ibm.ssl.contextProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 992
    const-string v0, "com.ibm.ssl.keyManager"

    const-string v1, "ssl.KeyManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 914
    const-string v0, "com.ibm.ssl.keyStore"

    .line 915
    .local v0, "ibmKey":Ljava/lang/String;
    const-string v3, "javax.net.ssl.keyStore"

    .line 917
    .local v3, "sysProperty":Ljava/lang/String;
    const/4 v1, 0x0

    .line 918
    .local v1, "res":Ljava/lang/String;
    invoke-direct {p0, p1, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getPropertyFromConfig(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 919
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 935
    .end local v1    # "res":Ljava/lang/String;
    .local v2, "res":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 931
    .end local v2    # "res":Ljava/lang/String;
    .restart local v1    # "res":Ljava/lang/String;
    :cond_0
    if-eqz v3, :cond_1

    .line 932
    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object v2, v1

    .line 935
    .end local v1    # "res":Ljava/lang/String;
    .restart local v2    # "res":Ljava/lang/String;
    goto :goto_0
.end method

.method public getKeyStorePassword(Ljava/lang/String;)[C
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 947
    const-string v2, "com.ibm.ssl.keyStorePassword"

    const-string v3, "javax.net.ssl.keyStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "pw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 949
    .local v1, "r":[C
    if-eqz v0, :cond_0

    .line 950
    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 956
    :cond_0
    :goto_0
    return-object v1

    .line 953
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getKeyStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 980
    const-string v0, "com.ibm.ssl.keyStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 968
    const-string v0, "com.ibm.ssl.keyStoreType"

    const-string v1, "javax.net.ssl.keyStoreType"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSSLProtocol(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 845
    const-string v0, "com.ibm.ssl.protocol"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustManager(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1061
    const-string v0, "com.ibm.ssl.trustManager"

    const-string v1, "ssl.TrustManagerFactory.algorithm"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStore(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1004
    const-string v0, "com.ibm.ssl.trustStore"

    const-string v1, "javax.net.ssl.trustStore"

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStorePassword(Ljava/lang/String;)[C
    .locals 4
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1016
    const-string v2, "com.ibm.ssl.trustStorePassword"

    const-string v3, "javax.net.ssl.trustStorePassword"

    invoke-direct {p0, p1, v2, v3}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1017
    .local v0, "pw":Ljava/lang/String;
    const/4 v1, 0x0

    .line 1018
    .local v1, "r":[C
    if-eqz v0, :cond_0

    .line 1019
    const-string v2, "{xor}"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1020
    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->deObfuscate(Ljava/lang/String;)[C

    move-result-object v1

    .line 1025
    :cond_0
    :goto_0
    return-object v1

    .line 1022
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    goto :goto_0
.end method

.method public getTrustStoreProvider(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1049
    const-string v0, "com.ibm.ssl.trustStoreProvider"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTrustStoreType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 1037
    const-string v0, "com.ibm.ssl.trustStoreType"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->getProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 429
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 430
    .local v0, "p":Ljava/util/Properties;
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 431
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 432
    if-eqz p2, :cond_0

    .line 433
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    :goto_0
    return-void

    .line 435
    :cond_0
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public merge(Ljava/util/Properties;Ljava/lang/String;)V
    .locals 2
    .param p1, "props"    # Ljava/util/Properties;
    .param p2, "configID"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 456
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->checkPropertyKeys(Ljava/util/Properties;)V

    .line 457
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    .line 458
    .local v0, "p":Ljava/util/Properties;
    if-eqz p2, :cond_0

    .line 459
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "p":Ljava/util/Properties;
    check-cast v0, Ljava/util/Properties;

    .line 461
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_0
    if-nez v0, :cond_1

    .line 462
    new-instance v0, Ljava/util/Properties;

    .end local v0    # "p":Ljava/util/Properties;
    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    .line 464
    .restart local v0    # "p":Ljava/util/Properties;
    :cond_1
    invoke-direct {p0, p1}, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->convertPassword(Ljava/util/Properties;)V

    .line 465
    invoke-virtual {v0, p1}, Ljava/util/Properties;->putAll(Ljava/util/Map;)V

    .line 466
    if-eqz p2, :cond_2

    .line 467
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 472
    :goto_0
    return-void

    .line 469
    :cond_2
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method

.method public remove(Ljava/lang/String;)Z
    .locals 2
    .param p1, "configID"    # Ljava/lang/String;

    .prologue
    .line 483
    const/4 v0, 0x0

    .line 484
    .local v0, "res":Z
    if-eqz p1, :cond_2

    .line 485
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->configs:Ljava/util/Hashtable;

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 492
    :cond_0
    :goto_0
    return v0

    .line 485
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 487
    :cond_2
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    if-eqz v1, :cond_0

    .line 488
    const/4 v0, 0x1

    .line 489
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/security/SSLSocketFactoryFactory;->defaultProperties:Ljava/util/Properties;

    goto :goto_0
.end method
