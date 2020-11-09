.class Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;
.super Landroid/os/AsyncTask;
.source "UserProfileNew.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/UserProfileNew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncEditProfileTask"
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
.field final synthetic this$0:Lcom/iot/engine/UserProfileNew;


# direct methods
.method private constructor <init>(Lcom/iot/engine/UserProfileNew;)V
    .locals 0

    .prologue
    .line 427
    iput-object p1, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/UserProfileNew;Lcom/iot/engine/UserProfileNew$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/UserProfileNew;
    .param p2, "x1"    # Lcom/iot/engine/UserProfileNew$1;

    .prologue
    .line 427
    invoke-direct {p0, p1}, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;-><init>(Lcom/iot/engine/UserProfileNew;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 427
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 438
    const-string v3, ""

    .line 439
    .local v3, "response":Ljava/lang/String;
    iget-object v4, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v4}, Lcom/iot/engine/UserProfileNew;->access$600(Lcom/iot/engine/UserProfileNew;)Lorg/json/JSONObject;

    move-result-object v1

    .line 440
    .local v1, "jBoby":Lorg/json/JSONObject;
    const-string v4, "Update Profile"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 443
    .local v2, "res":LSession/Constants;
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/user/updateprofile"

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

    iget-object v6, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v6}, Lcom/iot/engine/UserProfileNew;->access$700(Lcom/iot/engine/UserProfileNew;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 445
    :goto_0
    return-object v3

    .line 444
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 427
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 450
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 451
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v0}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v0}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 452
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v0}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 455
    :cond_0
    if-eqz p1, :cond_1

    .line 456
    const-string v0, "Profile Response "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v0, p1}, Lcom/iot/engine/UserProfileNew;->access$800(Lcom/iot/engine/UserProfileNew;Ljava/lang/String;)V

    .line 462
    :goto_0
    return-void

    .line 459
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    const-string v1, "Kindly try again."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 430
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 431
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/UserProfileNew;->access$502(Lcom/iot/engine/UserProfileNew;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 432
    iget-object v0, p0, Lcom/iot/engine/UserProfileNew$AsyncEditProfileTask;->this$0:Lcom/iot/engine/UserProfileNew;

    invoke-static {v0}, Lcom/iot/engine/UserProfileNew;->access$500(Lcom/iot/engine/UserProfileNew;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 434
    return-void
.end method
