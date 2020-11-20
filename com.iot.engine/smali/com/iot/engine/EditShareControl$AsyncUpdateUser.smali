.class Lcom/iot/engine/EditShareControl$AsyncUpdateUser;
.super Landroid/os/AsyncTask;
.source "EditShareControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/EditShareControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncUpdateUser"
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
.field final synthetic this$0:Lcom/iot/engine/EditShareControl;


# direct methods
.method constructor <init>(Lcom/iot/engine/EditShareControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/EditShareControl;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 256
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 267
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    .line 268
    .local v0, "con":LSession/Constants;
    const/4 v2, 0x0

    .line 271
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 272
    .local v3, "manager":LSession/SessionManager;
    iget-object v4, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-static {v4}, Lcom/iot/engine/EditShareControl;->access$200(Lcom/iot/engine/EditShareControl;)Ljava/lang/String;

    move-result-object v1

    .line 273
    .local v1, "mRequest":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/user/updatetype"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 277
    .end local v1    # "mRequest":Ljava/lang/String;
    .end local v3    # "manager":LSession/SessionManager;
    :goto_0
    return-object v2

    .line 275
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 256
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 283
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 284
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-static {v0}, Lcom/iot/engine/EditShareControl;->access$100(Lcom/iot/engine/EditShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-static {v0}, Lcom/iot/engine/EditShareControl;->access$100(Lcom/iot/engine/EditShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-static {v0}, Lcom/iot/engine/EditShareControl;->access$100(Lcom/iot/engine/EditShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 287
    :cond_0
    if-eqz p1, :cond_1

    .line 288
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-static {v0, p1}, Lcom/iot/engine/EditShareControl;->access$300(Lcom/iot/engine/EditShareControl;Ljava/lang/String;)V

    .line 293
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    const-string v1, "Kindly try again"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 260
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 261
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    const-string v3, "Retrieving appliances status"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/EditShareControl;->access$102(Lcom/iot/engine/EditShareControl;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 262
    iget-object v0, p0, Lcom/iot/engine/EditShareControl$AsyncUpdateUser;->this$0:Lcom/iot/engine/EditShareControl;

    invoke-static {v0}, Lcom/iot/engine/EditShareControl;->access$100(Lcom/iot/engine/EditShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 263
    return-void
.end method
