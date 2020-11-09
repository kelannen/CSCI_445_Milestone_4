.class Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;
.super Landroid/os/AsyncTask;
.source "ChangePassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ChangePassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncNewPasswordTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/ChangePassword;


# direct methods
.method constructor <init>(Lcom/iot/engine/ChangePassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ChangePassword;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 93
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 104
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 105
    .local v1, "net":LSession/Constants;
    const/4 v2, 0x0

    .line 108
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 109
    .local v0, "jBody":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    iget-object v4, v4, Lcom/iot/engine/ChangePassword;->sessionManager:LSession/SessionManager;

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 110
    const-string v3, "oldPassword"

    iget-object v4, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v4}, Lcom/iot/engine/ChangePassword;->access$100(Lcom/iot/engine/ChangePassword;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 111
    const-string v3, "newPassword"

    iget-object v4, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v4}, Lcom/iot/engine/ChangePassword;->access$200(Lcom/iot/engine/ChangePassword;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 112
    const-string v3, "Change Password "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user/updatepassword"

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

    iget-object v5, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    iget-object v5, v5, Lcom/iot/engine/ChangePassword;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 115
    .end local v0    # "jBody":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 114
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 93
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 120
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 121
    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v3}, Lcom/iot/engine/ChangePassword;->access$000(Lcom/iot/engine/ChangePassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v3}, Lcom/iot/engine/ChangePassword;->access$000(Lcom/iot/engine/ChangePassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 122
    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v3}, Lcom/iot/engine/ChangePassword;->access$000(Lcom/iot/engine/ChangePassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->cancel()V

    .line 125
    :cond_0
    const-string v3, "Change Password "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    if-eqz p1, :cond_2

    .line 130
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 131
    .local v1, "response":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "status":Ljava/lang/String;
    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 135
    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v3, v0}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 136
    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-virtual {v3}, Lcom/iot/engine/ChangePassword;->finish()V

    .line 145
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 138
    .restart local v0    # "msg":Ljava/lang/String;
    .restart local v1    # "response":Lorg/json/JSONObject;
    .restart local v2    # "status":Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v3, v0}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v0    # "msg":Ljava/lang/String;
    .end local v1    # "response":Lorg/json/JSONObject;
    .end local v2    # "status":Ljava/lang/String;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 143
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    iget-object v4, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-virtual {v4}, Lcom/iot/engine/ChangePassword;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 96
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 97
    iget-object v0, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ChangePassword;->access$002(Lcom/iot/engine/ChangePassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 98
    iget-object v0, p0, Lcom/iot/engine/ChangePassword$AsyncNewPasswordTask;->this$0:Lcom/iot/engine/ChangePassword;

    invoke-static {v0}, Lcom/iot/engine/ChangePassword;->access$000(Lcom/iot/engine/ChangePassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 100
    return-void
.end method
