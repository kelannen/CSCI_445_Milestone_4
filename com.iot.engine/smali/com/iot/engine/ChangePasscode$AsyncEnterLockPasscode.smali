.class Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;
.super Landroid/os/AsyncTask;
.source "ChangePasscode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ChangePasscode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncEnterLockPasscode"
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
.field final synthetic this$0:Lcom/iot/engine/ChangePasscode;


# direct methods
.method private constructor <init>(Lcom/iot/engine/ChangePasscode;)V
    .locals 0

    .prologue
    .line 372
    iput-object p1, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/ChangePasscode;Lcom/iot/engine/ChangePasscode$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/ChangePasscode;
    .param p2, "x1"    # Lcom/iot/engine/ChangePasscode$1;

    .prologue
    .line 372
    invoke-direct {p0, p1}, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;-><init>(Lcom/iot/engine/ChangePasscode;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 372
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 382
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 383
    .local v1, "req":LSession/Constants;
    const/4 v2, 0x0

    .line 384
    .local v2, "response":Ljava/lang/String;
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 386
    .local v3, "sessionManager":LSession/SessionManager;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 387
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v4, "userId"

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 388
    const-string v4, "messageFrom"

    iget-object v5, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-static {v5}, Lcom/iot/engine/ChangePasscode;->access$300(Lcom/iot/engine/ChangePasscode;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 389
    const-string v4, "lockCode"

    iget-object v5, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v5, v5, Lcom/iot/engine/ChangePasscode;->listString:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 390
    const-string v4, "switchId"

    invoke-virtual {v3}, LSession/SessionManager;->getLockSwitchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 391
    const-string v4, "ChangePasscode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setlockcode: Req "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/home/setlockcode"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 396
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 393
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 372
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 401
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 403
    if-eqz p1, :cond_0

    .line 404
    const-string v0, "ChangePasscode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute: Res"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :try_start_0
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    const-string v1, "Passcode Set Successfully"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 407
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-static {v0}, Lcom/iot/engine/ChangePasscode;->access$400(Lcom/iot/engine/ChangePasscode;)LSession/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    iget-object v1, v1, Lcom/iot/engine/ChangePasscode;->listString:Ljava/lang/String;

    invoke-virtual {v0, v1}, LSession/SessionManager;->saveLockCode(Ljava/lang/String;)V

    .line 408
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    invoke-virtual {v0}, Lcom/iot/engine/ChangePasscode;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 417
    :goto_0
    return-void

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/ChangePasscode$AsyncEnterLockPasscode;->this$0:Lcom/iot/engine/ChangePasscode;

    const v1, 0x7f060082

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 410
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 376
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 377
    return-void
.end method
