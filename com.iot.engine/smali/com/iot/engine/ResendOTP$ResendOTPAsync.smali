.class Lcom/iot/engine/ResendOTP$ResendOTPAsync;
.super Landroid/os/AsyncTask;
.source "ResendOTP.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ResendOTP;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResendOTPAsync"
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
    .line 154
    iput-object p1, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 154
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 164
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 165
    .local v1, "net":LSession/Constants;
    const-string v2, ""

    .line 169
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 170
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v3, "firstName"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "firstName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    const-string v3, "lastName"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "lastName"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 172
    const-string v3, "email"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 173
    const-string v3, "phoneNumber"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "phoneNumber"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 174
    const-string v3, "password"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "password"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 175
    const-string v3, "userType"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "userType"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 176
    const-string v3, "birthDate"

    iget-object v4, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v4, v4, Lcom/iot/engine/ResendOTP;->maplist:Ljava/util/HashMap;

    const-string v5, "birthDate"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user"

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

    .line 180
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 179
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 154
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 185
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 187
    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v2}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v2}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v2}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 190
    :cond_0
    if-eqz p1, :cond_4

    .line 192
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 193
    .local v1, "response":Lorg/json/JSONObject;
    if-eqz v1, :cond_1

    .line 196
    :try_start_1
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 198
    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v3, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-virtual {v3}, Lcom/iot/engine/ResendOTP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 216
    .end local v1    # "response":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 201
    .restart local v1    # "response":Lorg/json/JSONObject;
    :cond_2
    const-string v2, "msg"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Email Already Present But Not Verified"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 202
    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v3, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-virtual {v3}, Lcom/iot/engine/ResendOTP;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060071

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 207
    :catch_0
    move-exception v0

    .line 208
    .local v0, "e":Lorg/json/JSONException;
    :try_start_2
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 211
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v1    # "response":Lorg/json/JSONObject;
    :catch_1
    move-exception v2

    goto :goto_0

    .line 204
    .restart local v1    # "response":Lorg/json/JSONObject;
    :cond_3
    :try_start_3
    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    const-string v3, "msg"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_3
    .catch Lorg/json/JSONException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 214
    .end local v1    # "response":Lorg/json/JSONObject;
    :cond_4
    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    iget-object v3, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-virtual {v3}, Lcom/iot/engine/ResendOTP;->getResources()Landroid/content/res/Resources;

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
    iget-object v0, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ResendOTP;->access$002(Lcom/iot/engine/ResendOTP;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 159
    iget-object v0, p0, Lcom/iot/engine/ResendOTP$ResendOTPAsync;->this$0:Lcom/iot/engine/ResendOTP;

    invoke-static {v0}, Lcom/iot/engine/ResendOTP;->access$000(Lcom/iot/engine/ResendOTP;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 160
    return-void
.end method
