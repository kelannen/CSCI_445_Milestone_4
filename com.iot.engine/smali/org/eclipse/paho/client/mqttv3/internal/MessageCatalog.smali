.class public abstract Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
.super Ljava/lang/Object;
.source "MessageCatalog.java"


# static fields
.field private static INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getMessage(I)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # I

    .prologue
    .line 25
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    if-nez v0, :cond_0

    .line 26
    const-string v0, "java.util.ResourceBundle"

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 30
    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.ResourceBundleCatalog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :cond_0
    :goto_0
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    invoke-virtual {v0, p0}, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->getLocalizedMessage(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    return-object v0

    .line 32
    :catch_0
    move-exception v0

    const-string v0, ""

    goto :goto_1

    .line 34
    :cond_1
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v0}, Lorg/eclipse/paho/client/mqttv3/internal/ExceptionHelper;->isClassAvailable(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 36
    :try_start_1
    const-string v0, "org.eclipse.paho.client.mqttv3.internal.MIDPCatalog"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;->INSTANCE:Lorg/eclipse/paho/client/mqttv3/internal/MessageCatalog;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 38
    :catch_1
    move-exception v0

    const-string v0, ""

    goto :goto_1
.end method


# virtual methods
.method protected abstract getLocalizedMessage(I)Ljava/lang/String;
.end method
