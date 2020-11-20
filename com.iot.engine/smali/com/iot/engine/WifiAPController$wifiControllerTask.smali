.class Lcom/iot/engine/WifiAPController$wifiControllerTask;
.super Landroid/os/AsyncTask;
.source "WifiAPController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/WifiAPController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "wifiControllerTask"
.end annotation


# instance fields
.field a:Z

.field b:Z

.field mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/iot/engine/WifiAPController;

.field wifiAPControllerClass:Lcom/iot/engine/WifiAPController;


# direct methods
.method public constructor <init>(Lcom/iot/engine/WifiAPController;Lcom/iot/engine/WifiAPController;ZZLandroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/WifiAPController;
    .param p2, "wifiAPController"    # Lcom/iot/engine/WifiAPController;
    .param p3, "arg3"    # Z
    .param p4, "arg4"    # Z
    .param p5, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->this$0:Lcom/iot/engine/WifiAPController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->wifiAPControllerClass:Lcom/iot/engine/WifiAPController;

    .line 42
    iput-boolean p3, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a:Z

    .line 43
    iput-boolean p4, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->b:Z

    .line 44
    iput-object p5, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->mContext:Landroid/content/Context;

    .line 46
    return-void
.end method


# virtual methods
.method protected a([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "arg3"    # [Ljava/lang/Void;

    .prologue
    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->wifiAPControllerClass:Lcom/iot/engine/WifiAPController;

    iget-boolean v1, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a:Z

    invoke-static {v0, v1}, Lcom/iot/engine/WifiAPController;->wifiToggle(Lcom/iot/engine/WifiAPController;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 53
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 51
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public a()V
    .locals 4

    .prologue
    .line 56
    const/16 v0, 0x15

    .line 58
    .local v0, "sdkCurrentVersion":I
    :try_start_0
    iget-boolean v2, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a:Z

    if-eqz v2, :cond_2

    .line 59
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v2, v0, :cond_1

    .line 60
    iget-object v2, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->this$0:Lcom/iot/engine/WifiAPController;

    invoke-virtual {v2}, Lcom/iot/engine/WifiAPController;->turnOffHotspot()V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->wifiAPControllerClass:Lcom/iot/engine/WifiAPController;

    iget-object v3, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lcom/iot/engine/WifiAPController;->wifiToggle(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v1

    .line 72
    .local v1, "v0":Ljava/lang/Exception;
    const-string v2, "noti error"

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 68
    .end local v1    # "v0":Ljava/lang/Exception;
    :cond_2
    :try_start_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ge v2, v0, :cond_0

    goto :goto_0
.end method

.method protected a(Ljava/lang/Void;)V
    .locals 2
    .param p1, "arg2"    # Ljava/lang/Void;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 78
    :try_start_0
    invoke-virtual {p0}, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    :goto_0
    iget-boolean v1, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->b:Z

    if-eqz v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/iot/engine/WifiAPController$wifiControllerTask;->wifiAPControllerClass:Lcom/iot/engine/WifiAPController;

    invoke-virtual {v1}, Lcom/iot/engine/WifiAPController;->finish()V

    .line 89
    :cond_0
    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "v0":Ljava/lang/IllegalArgumentException;
    :try_start_1
    invoke-virtual {p0}, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 82
    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method protected doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "arg2"    # [Ljava/lang/Object;

    .prologue
    .line 91
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "arg2":[Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "arg1"    # Ljava/lang/Object;

    .prologue
    .line 94
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/iot/engine/WifiAPController$wifiControllerTask;->a(Ljava/lang/Void;)V

    .line 95
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 97
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 98
    return-void
.end method
