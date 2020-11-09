.class Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;
.super Landroid/os/AsyncTask;
.source "ShareControl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ShareControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncRegisterShareUser"
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
.field mURLFlag:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/ShareControl;


# direct methods
.method constructor <init>(Lcom/iot/engine/ShareControl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/ShareControl;

    .prologue
    .line 316
    iput-object p1, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 316
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 327
    const/4 v4, 0x1

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->mURLFlag:Ljava/lang/String;

    .line 328
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    .line 329
    .local v0, "con":LSession/Constants;
    const/4 v2, 0x0

    .line 331
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 332
    .local v3, "session":LSession/SessionManager;
    iget-object v4, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-static {v4}, Lcom/iot/engine/ShareControl;->access$300(Lcom/iot/engine/ShareControl;)Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "mRequest":Ljava/lang/String;
    const-string v4, "ShareControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground: request "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/user/shareControl"

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

    .line 337
    .end local v1    # "mRequest":Ljava/lang/String;
    .end local v3    # "session":LSession/SessionManager;
    :goto_0
    return-object v2

    .line 336
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 316
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 342
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 343
    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-static {v0}, Lcom/iot/engine/ShareControl;->access$200(Lcom/iot/engine/ShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-static {v0}, Lcom/iot/engine/ShareControl;->access$200(Lcom/iot/engine/ShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-static {v0}, Lcom/iot/engine/ShareControl;->access$200(Lcom/iot/engine/ShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 346
    :cond_0
    if-eqz p1, :cond_1

    .line 347
    const-string v0, "ShareControl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v1, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->mURLFlag:Ljava/lang/String;

    invoke-static {v0, p1, v1}, Lcom/iot/engine/ShareControl;->access$400(Lcom/iot/engine/ShareControl;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    :goto_0
    return-void

    .line 350
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    iget-object v1, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-virtual {v1}, Lcom/iot/engine/ShareControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 320
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 321
    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    const-string v3, "Share Home Control  "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ShareControl;->access$202(Lcom/iot/engine/ShareControl;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 322
    iget-object v0, p0, Lcom/iot/engine/ShareControl$AsyncRegisterShareUser;->this$0:Lcom/iot/engine/ShareControl;

    invoke-static {v0}, Lcom/iot/engine/ShareControl;->access$200(Lcom/iot/engine/ShareControl;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 323
    return-void
.end method
