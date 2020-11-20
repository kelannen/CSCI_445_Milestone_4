.class Lcom/iot/engine/OTP$AsyncOTPVerification;
.super Landroid/os/AsyncTask;
.source "OTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/OTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncOTPVerification"
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
.field final synthetic this$0:Lcom/iot/engine/OTP;


# direct methods
.method constructor <init>(Lcom/iot/engine/OTP;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/OTP;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 92
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/OTP$AsyncOTPVerification;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 102
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 103
    .local v1, "net":LSession/Constants;
    const-string v2, ""

    .line 106
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v4}, Lcom/iot/engine/OTP;->access$100(Lcom/iot/engine/OTP;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v3, "otp"

    iget-object v4, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v4}, Lcom/iot/engine/OTP;->access$200(Lcom/iot/engine/OTP;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user/verifyOTP"

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

    .line 111
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 110
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 92
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/OTP$AsyncOTPVerification;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 116
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 117
    if-eqz p1, :cond_3

    .line 118
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v5}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v5}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v5

    invoke-virtual {v5}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 119
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v5}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v5

    invoke-virtual {v5}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 122
    :cond_0
    if-eqz p1, :cond_2

    .line 124
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 125
    .local v3, "response":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 126
    .local v4, "status":Ljava/lang/String;
    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 127
    new-instance v2, Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 128
    .local v2, "jsResult":Lorg/json/JSONObject;
    new-instance v1, Landroid/content/Intent;

    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    const-class v6, Lcom/iot/engine/SetNewPassword;

    invoke-direct {v1, v5, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 129
    .local v1, "intent":Landroid/content/Intent;
    const-string v5, "USERID"

    const-string v6, "userId"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 130
    const-string v5, "x_AUTH_TOKEN"

    const-string v6, "x_AUTH_TOKEN"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-virtual {v5, v1}, Lcom/iot/engine/OTP;->startActivity(Landroid/content/Intent;)V

    .line 133
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-virtual {v5}, Lcom/iot/engine/OTP;->finish()V

    .line 149
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "jsResult":Lorg/json/JSONObject;
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "status":Ljava/lang/String;
    :goto_0
    return-void

    .line 135
    .restart local v3    # "response":Lorg/json/JSONObject;
    .restart local v4    # "status":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    const-string v6, "msg"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 138
    .end local v3    # "response":Lorg/json/JSONObject;
    .end local v4    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 142
    .end local v0    # "e":Lorg/json/JSONException;
    :cond_2
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    const-string v6, "Kindly try again."

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v5, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    const-string v6, "Kindly try again."

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 95
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 96
    iget-object v0, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/OTP;->access$002(Lcom/iot/engine/OTP;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 97
    iget-object v0, p0, Lcom/iot/engine/OTP$AsyncOTPVerification;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v0}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 98
    return-void
.end method
