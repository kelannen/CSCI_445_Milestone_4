.class Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;
.super Landroid/os/AsyncTask;
.source "SetNewPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/SetNewPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdatePasswordOTP"
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
.field final synthetic this$0:Lcom/iot/engine/SetNewPassword;


# direct methods
.method constructor <init>(Lcom/iot/engine/SetNewPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SetNewPassword;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 97
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 98
    .local v1, "net":LSession/Constants;
    const-string v2, ""

    .line 100
    .local v2, "res":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v4}, Lcom/iot/engine/SetNewPassword;->access$100(Lcom/iot/engine/SetNewPassword;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 102
    const-string v3, "newPassword"

    iget-object v4, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v4}, Lcom/iot/engine/SetNewPassword;->access$200(Lcom/iot/engine/SetNewPassword;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 104
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user/updatepasswordOTP"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v5}, Lcom/iot/engine/SetNewPassword;->access$300(Lcom/iot/engine/SetNewPassword;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 107
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 106
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 86
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 112
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 113
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v3}, Lcom/iot/engine/SetNewPassword;->access$000(Lcom/iot/engine/SetNewPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v3}, Lcom/iot/engine/SetNewPassword;->access$000(Lcom/iot/engine/SetNewPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 114
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v3}, Lcom/iot/engine/SetNewPassword;->access$000(Lcom/iot/engine/SetNewPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 116
    :cond_0
    if-eqz p1, :cond_2

    .line 118
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 122
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    const-class v4, Lcom/iot/engine/Login;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v1, "intent":Landroid/content/Intent;
    const v3, 0x10008000

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 124
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-virtual {v3, v1}, Lcom/iot/engine/SetNewPassword;->startActivity(Landroid/content/Intent;)V

    .line 126
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 128
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    const-string v4, "input_method"

    invoke-virtual {v3, v4}, Lcom/iot/engine/SetNewPassword;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 129
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-virtual {v3}, Lcom/iot/engine/SetNewPassword;->getCurrentFocus()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 139
    .end local v0    # "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 132
    .restart local v2    # "jObj":Lorg/json/JSONObject;
    :cond_1
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    const-string v4, "msg"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 135
    .end local v2    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v3

    goto :goto_0

    .line 137
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    iget-object v4, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-virtual {v4}, Lcom/iot/engine/SetNewPassword;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 90
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 91
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/SetNewPassword;->access$002(Lcom/iot/engine/SetNewPassword;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 92
    iget-object v0, p0, Lcom/iot/engine/SetNewPassword$UpdatePasswordOTP;->this$0:Lcom/iot/engine/SetNewPassword;

    invoke-static {v0}, Lcom/iot/engine/SetNewPassword;->access$000(Lcom/iot/engine/SetNewPassword;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 93
    return-void
.end method
