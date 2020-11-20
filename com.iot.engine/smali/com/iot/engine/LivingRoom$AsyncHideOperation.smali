.class Lcom/iot/engine/LivingRoom$AsyncHideOperation;
.super Landroid/os/AsyncTask;
.source "LivingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/LivingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncHideOperation"
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
.field mapList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/iot/engine/LivingRoom;


# direct methods
.method public constructor <init>(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/LivingRoom;
    .param p2, "mapList"    # Ljava/util/HashMap;

    .prologue
    .line 772
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 773
    iput-object p2, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->mapList:Ljava/util/HashMap;

    .line 774
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 769
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 778
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 779
    .local v1, "request":LSession/Constants;
    const/4 v2, 0x0

    .line 782
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v5}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 783
    new-instance v4, LSession/SessionManager;

    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {v4, v5}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 784
    .local v4, "session":LSession/SessionManager;
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 786
    .local v0, "jMain":Lorg/json/JSONObject;
    const-string v5, "switchId"

    iget-object v6, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->mapList:Ljava/util/HashMap;

    const-string v7, "SwitchID"

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 787
    const-string v5, "hideStatus"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 788
    const-string v5, "userId"

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 789
    const-string v5, "messageFrom"

    iget-object v6, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v6}, Lcom/iot/engine/LivingRoom;->access$300(Lcom/iot/engine/LivingRoom;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 791
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/switch/changehidestatus"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    .line 804
    .end local v0    # "jMain":Lorg/json/JSONObject;
    .end local v2    # "response":Ljava/lang/String;
    .end local v4    # "session":LSession/SessionManager;
    .local v3, "response":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 796
    .end local v3    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v5}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v5

    const-string v6, "Kindly check internet connection."

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v3, v2

    .line 804
    .end local v2    # "response":Ljava/lang/String;
    .restart local v3    # "response":Ljava/lang/String;
    goto :goto_0

    .line 799
    .end local v3    # "response":Ljava/lang/String;
    .restart local v2    # "response":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 769
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 808
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 809
    if-eqz p1, :cond_1

    .line 810
    const-string v2, "Hide service status :"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 814
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    new-instance v1, Lorg/json/JSONObject;

    const-string v2, "result"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 817
    .local v1, "jResult":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->mapList:Ljava/util/HashMap;

    const-string v4, "hideStatus"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/iot/engine/LivingRoom;->access$500(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;Ljava/lang/String;)V

    .line 818
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Switch hide successfully"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 831
    .end local v0    # "jObj":Lorg/json/JSONObject;
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 822
    .restart local v0    # "jObj":Lorg/json/JSONObject;
    :cond_0
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Fail hide the operation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v2

    goto :goto_0

    .line 829
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncHideOperation;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v2}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "Kindly try again."

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
