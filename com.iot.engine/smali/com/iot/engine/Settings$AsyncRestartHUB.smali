.class Lcom/iot/engine/Settings$AsyncRestartHUB;
.super Landroid/os/AsyncTask;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRestartHUB"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Settings;


# direct methods
.method private constructor <init>(Lcom/iot/engine/Settings;)V
    .locals 0

    .prologue
    .line 463
    iput-object p1, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/Settings;Lcom/iot/engine/Settings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/Settings;
    .param p2, "x1"    # Lcom/iot/engine/Settings$1;

    .prologue
    .line 463
    invoke-direct {p0, p1}, Lcom/iot/engine/Settings$AsyncRestartHUB;-><init>(Lcom/iot/engine/Settings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 463
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Settings$AsyncRestartHUB;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 476
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 477
    .local v0, "jObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 480
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v3}, Lcom/iot/engine/Settings;->access$400(Lcom/iot/engine/Settings;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 481
    const-string v2, "messageFrom"

    iget-object v3, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v3}, Lcom/iot/engine/Settings;->access$000(Lcom/iot/engine/Settings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 483
    const-string v2, "doInBackground:Request"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/util/reboothub"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v5}, Lcom/iot/engine/Settings;->access$400(Lcom/iot/engine/Settings;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 485
    const-string v2, "Response"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 487
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 463
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Settings$AsyncRestartHUB;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 493
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 495
    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 497
    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 499
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 467
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 468
    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    const-string v3, "Restarting Pongo Master "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/Settings;->access$302(Lcom/iot/engine/Settings;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 469
    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartHUB;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 471
    return-void
.end method
