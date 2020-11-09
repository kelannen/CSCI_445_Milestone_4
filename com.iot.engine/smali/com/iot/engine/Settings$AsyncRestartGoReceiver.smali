.class Lcom/iot/engine/Settings$AsyncRestartGoReceiver;
.super Landroid/os/AsyncTask;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRestartGoReceiver"
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
    .line 502
    iput-object p1, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/Settings;Lcom/iot/engine/Settings$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/Settings;
    .param p2, "x1"    # Lcom/iot/engine/Settings$1;

    .prologue
    .line 502
    invoke-direct {p0, p1}, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;-><init>(Lcom/iot/engine/Settings;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 502
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 506
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 507
    .local v0, "jObj":Lorg/json/JSONObject;
    const/4 v1, 0x0

    .line 510
    .local v1, "response":Ljava/lang/String;
    :try_start_0
    iget-object v3, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Internet"

    :goto_0
    invoke-static {v3, v2}, Lcom/iot/engine/Settings;->access$002(Lcom/iot/engine/Settings;Ljava/lang/String;)Ljava/lang/String;

    .line 511
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v3}, Lcom/iot/engine/Settings;->access$400(Lcom/iot/engine/Settings;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 512
    const-string v2, "messageFrom"

    iget-object v3, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v3}, Lcom/iot/engine/Settings;->access$000(Lcom/iot/engine/Settings;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 514
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

    .line 515
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/util/rebootpanel"

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

    iget-object v5, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v5}, Lcom/iot/engine/Settings;->access$400(Lcom/iot/engine/Settings;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 516
    const-string v2, "Response"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_1
    const/4 v2, 0x0

    return-object v2

    .line 510
    :cond_0
    const-string v2, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 518
    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 502
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 524
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 526
    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 528
    iget-object v0, p0, Lcom/iot/engine/Settings$AsyncRestartGoReceiver;->this$0:Lcom/iot/engine/Settings;

    invoke-static {v0}, Lcom/iot/engine/Settings;->access$300(Lcom/iot/engine/Settings;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 530
    :cond_0
    return-void
.end method
