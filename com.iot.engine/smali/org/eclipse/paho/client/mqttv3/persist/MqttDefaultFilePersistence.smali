.class public Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;
.super Ljava/lang/Object;
.source "MqttDefaultFilePersistence.java"

# interfaces
.implements Lorg/eclipse/paho/client/mqttv3/MqttClientPersistence;


# static fields
.field private static final FILE_FILTER:Ljava/io/FilenameFilter;

.field private static final LOCK_FILENAME:Ljava/lang/String; = ".lck"

.field private static final MESSAGE_BACKUP_FILE_EXTENSION:Ljava/lang/String; = ".bup"

.field private static final MESSAGE_FILE_EXTENSION:Ljava/lang/String; = ".msg"


# instance fields
.field private clientDir:Ljava/io/File;

.field private dataDir:Ljava/io/File;

.field private fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence$1;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence$1;-><init>()V

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->FILE_FILTER:Ljava/io/FilenameFilter;

    .line 56
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    const-string v0, "user.dir"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;-><init>(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "directory"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    .line 52
    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    .line 67
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    .line 68
    return-void
.end method

.method private checkIsOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 129
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 130
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v0}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v0

    .line 132
    :cond_0
    return-void
.end method

.method private getFiles()[Ljava/io/File;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 247
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 248
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    sget-object v2, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->FILE_FILTER:Ljava/io/FilenameFilter;

    invoke-virtual {v1, v2}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 249
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 250
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v1}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v1

    .line 252
    :cond_0
    return-object v0
.end method

.method private isSafeChar(C)Z
    .locals 1
    .param p1, "c"    # C

    .prologue
    .line 256
    invoke-static {p1}, Ljava/lang/Character;->isJavaIdentifierPart(C)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x2d

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private restoreBackups(Ljava/io/File;)V
    .locals 8
    .param p1, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 267
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence$2;

    invoke-direct {v4, p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence$2;-><init>(Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;)V

    invoke-virtual {p1, v4}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    .line 272
    .local v0, "files":[Ljava/io/File;
    if-nez v0, :cond_0

    .line 273
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v4

    .line 276
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v0

    if-lt v1, v4, :cond_1

    .line 284
    return-void

    .line 277
    :cond_1
    new-instance v2, Ljava/io/File;

    aget-object v4, v0, v1

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v6, v0, v1

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".bup"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v2, "originalFile":Ljava/io/File;
    aget-object v4, v0, v1

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    .line 279
    .local v3, "result":Z
    if-nez v3, :cond_2

    .line 280
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 281
    aget-object v4, v0, v1

    invoke-virtual {v4, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 276
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 294
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->getFiles()[Ljava/io/File;

    move-result-object v0

    .line 295
    .local v0, "files":[Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-lt v1, v2, :cond_0

    .line 298
    return-void

    .line 296
    :cond_0
    aget-object v2, v0, v1

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 295
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 136
    monitor-enter p0

    .line 138
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    invoke-virtual {v0}, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->release()V

    .line 142
    :cond_0
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->getFiles()[Ljava/io/File;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 145
    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    .line 136
    monitor-exit p0

    .line 147
    return-void

    .line 136
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 287
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 288
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 289
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public get(Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .locals 13
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 197
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 200
    :try_start_0
    new-instance v9, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v4, ".msg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 201
    .local v9, "file":Ljava/io/File;
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 202
    .local v10, "fis":Ljava/io/FileInputStream;
    invoke-virtual {v10}, Ljava/io/FileInputStream;->available()I

    move-result v12

    .line 203
    .local v12, "size":I
    new-array v2, v12, [B

    .line 204
    .local v2, "data":[B
    const/4 v11, 0x0

    .line 205
    .local v11, "read":I
    :goto_0
    if-lt v11, v12, :cond_0

    .line 208
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V

    .line 209
    new-instance v0, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;

    const/4 v3, 0x0

    array-length v4, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lorg/eclipse/paho/client/mqttv3/internal/MqttPersistentData;-><init>(Ljava/lang/String;[BII[BII)V

    .line 214
    .local v0, "result":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    return-object v0

    .line 206
    .end local v0    # "result":Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    :cond_0
    sub-int v1, v12, v11

    invoke-virtual {v10, v2, v11, v1}, Ljava/io/FileInputStream;->read([BII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    add-int/2addr v11, v1

    goto :goto_0

    .line 211
    .end local v2    # "data":[B
    .end local v9    # "file":Ljava/io/File;
    .end local v10    # "fis":Ljava/io/FileInputStream;
    .end local v11    # "read":I
    .end local v12    # "size":I
    :catch_0
    move-exception v8

    .line 212
    .local v8, "ex":Ljava/io/IOException;
    new-instance v1, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v1, v8}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public keys()Ljava/util/Enumeration;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 235
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 236
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->getFiles()[Ljava/io/File;

    move-result-object v1

    .line 237
    .local v1, "files":[Ljava/io/File;
    new-instance v4, Ljava/util/Vector;

    array-length v5, v1

    invoke-direct {v4, v5}, Ljava/util/Vector;-><init>(I)V

    .line 238
    .local v4, "result":Ljava/util/Vector;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v5, v1

    if-lt v2, v5, :cond_0

    .line 243
    invoke-virtual {v4}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    return-object v5

    .line 239
    :cond_0
    aget-object v5, v1, v2

    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "filename":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    const-string v7, ".msg"

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "key":Ljava/lang/String;
    invoke-virtual {v4, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 238
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public open(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "clientId"    # Ljava/lang/String;
    .param p2, "theConnection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_0

    .line 73
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v4

    .line 74
    :cond_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 75
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_1

    .line 76
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v4

    .line 79
    :cond_1
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->canWrite()Z

    move-result v4

    if-nez v4, :cond_2

    .line 80
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v4}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>()V

    throw v4

    .line 84
    :cond_2
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v3, "keyBuffer":Ljava/lang/StringBuffer;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_4

    .line 91
    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 92
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v1, v4, :cond_6

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    if-nez v4, :cond_3

    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "key":Ljava/lang/String;
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->dataDir:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    .line 104
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    .line 105
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    .end local v2    # "key":Ljava/lang/String;
    :cond_3
    :try_start_1
    new-instance v4, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    const-string v6, ".lck"

    invoke-direct {v4, v5, v6}, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->fileLock:Lorg/eclipse/paho/client/mqttv3/internal/FileLock;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 120
    :goto_2
    :try_start_2
    iget-object v4, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    invoke-direct {p0, v4}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->restoreBackups(Ljava/io/File;)V

    .line 99
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    return-void

    .line 86
    :cond_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 87
    .local v0, "c":C
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->isSafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 88
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 85
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 93
    .end local v0    # "c":C
    :cond_6
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 94
    .restart local v0    # "c":C
    invoke-direct {p0, v0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->isSafeChar(C)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 95
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 92
    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 99
    .end local v0    # "c":C
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method public put(Ljava/lang/String;Lorg/eclipse/paho/client/mqttv3/MqttPersistable;)V
    .locals 8
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "message"    # Lorg/eclipse/paho/client/mqttv3/MqttPersistable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 156
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 157
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, ".msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 158
    .local v2, "file":Ljava/io/File;
    new-instance v0, Ljava/io/File;

    iget-object v5, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v7, ".msg"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ".bup"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 160
    .local v0, "backupFile":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 162
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 163
    .local v4, "result":Z
    if-nez v4, :cond_0

    .line 164
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 165
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 169
    .end local v4    # "result":Z
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 170
    .local v3, "fos":Ljava/io/FileOutputStream;
    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderBytes()[B

    move-result-object v5

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderOffset()I

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getHeaderLength()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 171
    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v5

    if-eqz v5, :cond_1

    .line 172
    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadBytes()[B

    move-result-object v5

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadOffset()I

    move-result v6

    invoke-interface {p2}, Lorg/eclipse/paho/client/mqttv3/MqttPersistable;->getPayloadLength()I

    move-result v7

    invoke-virtual {v3, v5, v6, v7}, Ljava/io/FileOutputStream;->write([BII)V

    .line 174
    :cond_1
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/FileDescriptor;->sync()V

    .line 175
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 176
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 178
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 187
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 188
    .restart local v4    # "result":Z
    if-nez v4, :cond_3

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 190
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 194
    .end local v4    # "result":Z
    :cond_3
    return-void

    .line 181
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_0
    move-exception v1

    .line 182
    .local v1, "ex":Ljava/io/IOException;
    :try_start_1
    new-instance v5, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;

    invoke-direct {v5, v1}, Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;-><init>(Ljava/lang/Throwable;)V

    throw v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .end local v1    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 185
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 187
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 188
    .restart local v4    # "result":Z
    if-nez v4, :cond_4

    .line 189
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 190
    invoke-virtual {v0, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 193
    .end local v4    # "result":Z
    :cond_4
    throw v5
.end method

.method public remove(Ljava/lang/String;)V
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/paho/client/mqttv3/MqttPersistenceException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-direct {p0}, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->checkIsOpen()V

    .line 223
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/persist/MqttDefaultFilePersistence;->clientDir:Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v3, ".msg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 224
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 225
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 227
    :cond_0
    return-void
.end method
