.class Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;
.super Landroid/os/AsyncTask;
.source "EditRemoteButtonActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LearningPhaseTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)V
    .locals 0

    .prologue
    .line 117
    iput-object p1, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;
    .param p2, "x1"    # Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$1;

    .prologue
    .line 117
    invoke-direct {p0, p1}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;-><init>(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 117
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 127
    const/4 v2, 0x0

    .line 129
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 130
    .local v1, "jParams":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$200(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string v3, "buttonId"

    const-string v4, "10"

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 132
    const-string v3, "towerId"

    iget-object v4, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v4}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$300(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ljava/util/HashMap;

    move-result-object v4

    const-string v5, "remote_tower_id"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 133
    const-string v3, "EditRemoteButtonActivity"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Learn remote: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/remote/learnircode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v6}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$200(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 136
    .end local v1    # "jParams":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 135
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 117
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 141
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 142
    if-eqz p1, :cond_0

    .line 143
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 120
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 121
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$102(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 122
    iget-object v0, p0, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity$LearningPhaseTask;->this$0:Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;

    invoke-static {v0}, Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;->access$100(Lcom/iot/engine/GoRemote/EditRemoteButtonActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 123
    return-void
.end method
