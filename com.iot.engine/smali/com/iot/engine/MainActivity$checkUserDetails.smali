.class Lcom/iot/engine/MainActivity$checkUserDetails;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "checkUserDetails"
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
.field response:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/MainActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/MainActivity;)V
    .locals 1

    .prologue
    .line 1540
    iput-object p1, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 1541
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->response:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/MainActivity;
    .param p2, "x1"    # Lcom/iot/engine/MainActivity$1;

    .prologue
    .line 1540
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity$checkUserDetails;-><init>(Lcom/iot/engine/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1540
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$checkUserDetails;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 1545
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1546
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1547
    const-string v2, "emailId"

    iget-object v3, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v3, v3, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1548
    const-string v2, "MainActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "doInBackground: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "user/checkguestuser"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v5, v5, Lcom/iot/engine/MainActivity;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->response:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1551
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    iget-object v2, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->response:Ljava/lang/String;

    return-object v2

    .line 1550
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1540
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$checkUserDetails;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1556
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1558
    if-eqz p1, :cond_0

    .line 1559
    :try_start_0
    const-string v5, "MainActivity"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPostExecute: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    sget-object v5, Lcom/iot/engine/MainActivity;->thisMainInstance:Lcom/iot/engine/MainActivity;

    if-eqz v5, :cond_0

    .line 1561
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1562
    .local v2, "jObj":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    const-string v5, "result"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1563
    .local v3, "jResult":Lorg/json/JSONObject;
    const-string v5, "status"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1564
    new-instance v0, Landroid/app/Dialog;

    iget-object v5, p0, Lcom/iot/engine/MainActivity$checkUserDetails;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 1565
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 1566
    const v5, 0x7f04001d

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 1567
    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 1568
    const v5, 0x7f0d00a5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 1570
    .local v4, "txtOk":Landroid/widget/TextView;
    new-instance v5, Lcom/iot/engine/MainActivity$checkUserDetails$1;

    invoke-direct {v5, p0, v0}, Lcom/iot/engine/MainActivity$checkUserDetails$1;-><init>(Lcom/iot/engine/MainActivity$checkUserDetails;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1578
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1583
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v3    # "jResult":Lorg/json/JSONObject;
    .end local v4    # "txtOk":Landroid/widget/TextView;
    :cond_0
    :goto_0
    return-void

    .line 1582
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
