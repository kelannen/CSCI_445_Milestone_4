.class Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;
.super Landroid/os/AsyncTask;
.source "ResendOTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ResendOTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncOTPVerificationTask"
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
.field final synthetic this$0:Lcom/iot/engine/ResendOTP;


# direct methods
.method constructor <init>(Lcom/iot/engine/ResendOTP;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ResendOTP;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 97
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 107
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 108
    .local v1, "net":LSession/Constants;
    const-string v2, ""

    .line 111
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 112
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v3, "email"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 113
    const-string v3, "otp"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->mOTP:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user/verifyEmailOTP"

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

    .line 117
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 116
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 97
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 124
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v3}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v3}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 125
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v3}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 128
    :cond_0
    if-eqz p1, :cond_1

    .line 130
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 132
    .local v2, "response":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 134
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    const-class v4, Lcom/iot/engine/Login;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 135
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "EMAIL"

    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v3, v3, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "email"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-virtual {v3}, Lcom/iot/engine/ResendOTP;->finish()V

    .line 137
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-virtual {v3, v1}, Lcom/iot/engine/ResendOTP;->startActivity(Landroid/content/Intent;)V

    .line 138
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    const v4, 0x7f050011

    const v5, 0x7f050012

    invoke-virtual {v3, v4, v5}, Lcom/iot/engine/ResendOTP;->overridePendingTransition(II)V

    .line 139
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-virtual {v4}, Lcom/iot/engine/ResendOTP;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f06007f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 151
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 143
    .restart local v2    # "response":Lorg/json/JSONObject;
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 146
    .end local v2    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 147
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 101
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 102
    iget-object v0, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ResendOTP;->access$002(Lcom/iot/engine/ResendOTP;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 103
    iget-object v0, p0, Lcom/iot/engine/ResendOTP$AsyncOTPVerificationTask;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v0}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 104
    return-void
.end method
