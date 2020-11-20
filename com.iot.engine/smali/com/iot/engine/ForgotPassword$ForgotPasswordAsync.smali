.class Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;
.super Landroid/os/AsyncTask;
.source "ForgotPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ForgotPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ForgotPasswordAsync"
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
.field final synthetic this$0:Lcom/iot/engine/ForgotPassword;


# direct methods
.method constructor <init>(Lcom/iot/engine/ForgotPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ForgotPassword;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 71
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 81
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 82
    .local v1, "net":LSession/Constants;
    const-string v2, ""

    .line 85
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v3, "email"

    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-static {v4}, Lcom/iot/engine/ForgotPassword;->access$100(Lcom/iot/engine/ForgotPassword;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 87
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user/sendPasswordOTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 89
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 88
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 71
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 94
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 95
    if-eqz p1, :cond_3

    .line 96
    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-static {v4}, Lcom/iot/engine/ForgotPassword;->access$000(Lcom/iot/engine/ForgotPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-static {v4}, Lcom/iot/engine/ForgotPassword;->access$000(Lcom/iot/engine/ForgotPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 97
    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-static {v4}, Lcom/iot/engine/ForgotPassword;->access$000(Lcom/iot/engine/ForgotPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 100
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 101
    .local v2, "response":Lorg/json/JSONObject;
    if-eqz v2, :cond_1

    .line 103
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 105
    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "mResult":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 108
    .local v3, "resultObject":Lorg/json/JSONObject;
    new-instance v0, Landroid/content/Intent;

    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    const-class v5, Lcom/iot/engine/OTP;

    invoke-direct {v0, v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 109
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "EmailId"

    iget-object v5, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-static {v5}, Lcom/iot/engine/ForgotPassword;->access$200(Lcom/iot/engine/ForgotPassword;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v4, "USERID"

    const-string v5, "userId"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-virtual {v4, v0}, Lcom/iot/engine/ForgotPassword;->startActivity(Landroid/content/Intent;)V

    .line 112
    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    iget-object v5, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-virtual {v5}, Lcom/iot/engine/ForgotPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060071

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 125
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "mResult":Ljava/lang/String;
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "resultObject":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 116
    .restart local v2    # "response":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    const-string v5, "msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 120
    .end local v2    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    goto :goto_0

    .line 123
    :cond_3
    iget-object v4, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    iget-object v5, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-virtual {v5}, Lcom/iot/engine/ForgotPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 74
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 75
    iget-object v0, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ForgotPassword;->access$002(Lcom/iot/engine/ForgotPassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 76
    iget-object v0, p0, Lcom/iot/engine/ForgotPassword$ForgotPasswordAsync;->this$0:Lcom/iot/engine/ForgotPassword;

    invoke-static {v0}, Lcom/iot/engine/ForgotPassword;->access$000(Lcom/iot/engine/ForgotPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 77
    return-void
.end method
