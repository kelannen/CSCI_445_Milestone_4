.class Lcom/iot/engine/OTP$ForgotPasswordAsync;
.super Landroid/os/AsyncTask;
.source "OTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/OTP;
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
.field final synthetic this$0:Lcom/iot/engine/OTP;


# direct methods
.method constructor <init>(Lcom/iot/engine/OTP;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/OTP;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/OTP$ForgotPasswordAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 5
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 164
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 165
    .local v1, "net":LSession/Constants;
    const-string v2, ""

    .line 167
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 168
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v3, "email"

    iget-object v4, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v4}, Lcom/iot/engine/OTP;->access$300(Lcom/iot/engine/OTP;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 169
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

    .line 171
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 170
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/OTP$ForgotPasswordAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 176
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 177
    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v2}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v2}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v2}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 180
    :cond_0
    if-eqz p1, :cond_3

    .line 182
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 183
    .local v1, "response":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 184
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 185
    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    iget-object v3, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-virtual {v3}, Lcom/iot/engine/OTP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 195
    .end local v1    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 187
    .restart local v1    # "response":Lorg/json/JSONObject;
    :cond_2
    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    iget-object v3, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-virtual {v3}, Lcom/iot/engine/OTP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06007d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 190
    .end local v1    # "response":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 193
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    iget-object v3, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-virtual {v3}, Lcom/iot/engine/OTP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 157
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 158
    iget-object v0, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    const-string v3, "Kindly wait"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/OTP;->access$002(Lcom/iot/engine/OTP;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 159
    iget-object v0, p0, Lcom/iot/engine/OTP$ForgotPasswordAsync;->this$0:Lcom/iot/engine/OTP;

    invoke-static {v0}, Lcom/iot/engine/OTP;->access$000(Lcom/iot/engine/OTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 160
    return-void
.end method
