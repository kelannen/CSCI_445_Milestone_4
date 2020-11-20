.class public Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;
.super Ljava/lang/Object;
.source "LoggerFactory.java"


# static fields
.field private static final CLASS_NAME:Ljava/lang/String;

.field public static final MQTT_CLIENT_MSG_CAT:Ljava/lang/String; = "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

.field static class$0:Ljava/lang/Class;

.field static class$1:Ljava/lang/Class;

.field static class$2:Ljava/lang/Class;

.field private static jsr47LoggerClassName:Ljava/lang/String;

.field private static overrideloggerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 46
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$0:Ljava/lang/Class;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "org.eclipse.paho.client.mqttv3.logging.LoggerFactory"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$0:Ljava/lang/Class;

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->CLASS_NAME:Ljava/lang/String;

    .line 48
    const/4 v0, 0x0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->overrideloggerClassName:Ljava/lang/String;

    .line 52
    sget-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$1:Ljava/lang/Class;

    if-nez v0, :cond_1

    :try_start_1
    const-string v0, "org.eclipse.paho.client.mqttv3.logging.JSR47Logger"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$1:Ljava/lang/Class;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->jsr47LoggerClassName:Ljava/lang/String;

    return-void

    .line 46
    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1

    .line 52
    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLogger(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .locals 5
    .param p0, "messageCatalogName"    # Ljava/lang/String;
    .param p1, "loggerID"    # Ljava/lang/String;

    .prologue
    .line 66
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->overrideloggerClassName:Ljava/lang/String;

    .line 67
    .local v1, "loggerClassName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 69
    .local v0, "logger":Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    if-nez v1, :cond_0

    .line 70
    sget-object v1, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->jsr47LoggerClassName:Ljava/lang/String;

    .line 73
    :cond_0
    invoke-static {p0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, p1, v3}, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->getLogger(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-result-object v0

    .line 76
    if-nez v0, :cond_1

    .line 77
    new-instance v2, Ljava/util/MissingResourceException;

    const-string v3, "Error locating the logging class"

    sget-object v4, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->CLASS_NAME:Ljava/lang/String;

    invoke-direct {v2, v3, v4, p1}, Ljava/util/MissingResourceException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v2

    .line 80
    :cond_1
    return-object v0
.end method

.method private static getLogger(Ljava/lang/String;Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    .locals 5
    .param p0, "loggerClassName"    # Ljava/lang/String;
    .param p1, "messageCatalog"    # Ljava/util/ResourceBundle;
    .param p2, "loggerID"    # Ljava/lang/String;
    .param p3, "resourceName"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "logger":Lorg/eclipse/paho/client/mqttv3/logging/Logger;
    const/4 v1, 0x0

    .line 98
    .local v1, "logClass":Ljava/lang/Class;
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    .line 104
    if-eqz v1, :cond_0

    .line 107
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Lorg/eclipse/paho/client/mqttv3/logging/Logger;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/ExceptionInInitializerError; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_5

    .line 117
    invoke-interface {v2, p1, p2, p3}, Lorg/eclipse/paho/client/mqttv3/logging/Logger;->initialise(Ljava/util/ResourceBundle;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v3, v2

    .line 120
    :goto_0
    return-object v3

    .line 100
    :catch_0
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 102
    :catch_1
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 109
    :catch_2
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 111
    :catch_3
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 113
    :catch_4
    move-exception v3

    move-object v3, v4

    goto :goto_0

    .line 115
    :catch_5
    move-exception v3

    move-object v3, v4

    goto :goto_0
.end method

.method public static getLoggingProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 131
    const/4 v4, 0x0

    .line 135
    .local v4, "result":Ljava/lang/String;
    :try_start_0
    const-string v5, "java.util.logging.LogManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 136
    .local v0, "logManagerClass":Ljava/lang/Class;
    const-string v5, "getLogManager"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 137
    .local v2, "m1":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 138
    .local v1, "logManagerInstance":Ljava/lang/Object;
    const-string v6, "getProperty"

    const/4 v5, 0x1

    new-array v7, v5, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v5, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$2:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-nez v5, :cond_0

    :try_start_1
    const-string v5, "java.lang.String"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v5

    :try_start_2
    sput-object v5, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->class$2:Ljava/lang/Class;

    :cond_0
    aput-object v5, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 139
    .local v3, "m2":Ljava/lang/reflect/Method;
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "result":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .line 144
    .end local v0    # "logManagerClass":Ljava/lang/Class;
    .end local v1    # "logManagerInstance":Ljava/lang/Object;
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    .end local v3    # "m2":Ljava/lang/reflect/Method;
    .restart local v4    # "result":Ljava/lang/String;
    :goto_0
    return-object v4

    .line 138
    .restart local v0    # "logManagerClass":Ljava/lang/Class;
    .restart local v1    # "logManagerInstance":Ljava/lang/Object;
    .restart local v2    # "m1":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    new-instance v6, Ljava/lang/NoClassDefFoundError;

    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v6, v5}, Ljava/lang/NoClassDefFoundError;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 142
    .end local v0    # "logManagerClass":Ljava/lang/Class;
    .end local v1    # "logManagerInstance":Ljava/lang/Object;
    .end local v2    # "m1":Ljava/lang/reflect/Method;
    .end local v4    # "result":Ljava/lang/String;
    :catch_1
    move-exception v5

    const/4 v4, 0x0

    .restart local v4    # "result":Ljava/lang/String;
    goto :goto_0
.end method

.method public static setLogger(Ljava/lang/String;)V
    .locals 0
    .param p0, "loggerClassName"    # Ljava/lang/String;

    .prologue
    .line 154
    sput-object p0, Lorg/eclipse/paho/client/mqttv3/logging/LoggerFactory;->overrideloggerClassName:Ljava/lang/String;

    .line 155
    return-void
.end method
