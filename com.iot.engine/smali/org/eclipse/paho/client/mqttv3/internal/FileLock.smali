.class public Lorg/eclipse/paho/client/mqttv3/internal/FileLock;
.super Ljava/lang/Object;
.source "FileLock.java"


# instance fields
.field private file:Ljava/io/RandomAccessFile;

.field private fileLock:Ljava/lang/Object;

.field private lockFile:Ljava/io/File;


# direct methods
.method public constructor <init>(Ljava/io/File;Ljava/lang/String;)V
    .locals 6
    .param p1, "clientDir"    # Ljava/io/File;
    .param p2, "lockFilename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    .line 47
    const-string v2, "java.nio.channels.FileLock"

    invoke-static {v2}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 49
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    iget-object v3, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    const-string v4, "rw"

    invoke-direct {v2, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    .line 50
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "getChannel"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 51
    .local v1, "m":Ljava/lang/reflect/Method;
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 52
    .local v0, "channel":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "tryLock"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 53
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 61
    .end local v0    # "channel":Ljava/lang/Object;
    .end local v1    # "m":Ljava/lang/reflect/Method;
    :goto_0
    iget-object v2, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 63
    invoke-virtual {p0}, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->release()V

    .line 64
    new-instance v2, Ljava/lang/Exception;

    const-string v3, "Problem obtaining file lock"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2

    .line 55
    :catch_0
    move-exception v2

    iput-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_0

    .line 57
    :catch_1
    move-exception v2

    iput-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_0

    .line 59
    :catch_2
    move-exception v2

    iput-object v5, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    goto :goto_0

    .line 67
    :cond_0
    return-void
.end method


# virtual methods
.method public release()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 74
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "release"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 76
    .local v0, "m":Ljava/lang/reflect/Method;
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->fileLock:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 82
    .end local v0    # "m":Ljava/lang/reflect/Method;
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    if-eqz v1, :cond_1

    .line 84
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 87
    :goto_1
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->file:Ljava/io/RandomAccessFile;

    .line 90
    :cond_1
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 91
    iget-object v1, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 93
    :cond_2
    iput-object v4, p0, Lorg/eclipse/paho/client/mqttv3/internal/FileLock;->lockFile:Ljava/io/File;

    .line 94
    return-void

    :catch_0
    move-exception v1

    goto :goto_1

    :catch_1
    move-exception v1

    goto :goto_0
.end method
