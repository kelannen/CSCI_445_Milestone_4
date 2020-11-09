.class Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;
.super Landroid/os/AsyncTask;
.source "LivingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/LivingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForSwitch"
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
.field final synthetic this$0:Lcom/iot/engine/LivingRoom;


# direct methods
.method private constructor <init>(Lcom/iot/engine/LivingRoom;)V
    .locals 0

    .prologue
    .line 1007
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/LivingRoom;Lcom/iot/engine/LivingRoom$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p2, "x1"    # Lcom/iot/engine/LivingRoom$1;

    .prologue
    .line 1007
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;-><init>(Lcom/iot/engine/LivingRoom;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1007
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 1017
    const/4 v2, 0x0

    .line 1019
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 1021
    .local v1, "jsonParams":Lorg/json/JSONObject;
    const-string v4, "roomId"

    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    iget-object v5, v5, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1022
    const-string v4, "messageFrom"

    iget-object v5, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v5}, Lcom/iot/engine/LivingRoom;->access$300(Lcom/iot/engine/LivingRoom;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1023
    const-string v4, "LivingRoom"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "switch/getswitchbyroom"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1025
    .local v3, "urlGo":Ljava/lang/String;
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

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

    iget-object v6, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v6}, Lcom/iot/engine/LivingRoom;->access$600(Lcom/iot/engine/LivingRoom;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v3, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1028
    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    .end local v3    # "urlGo":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 1027
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1007
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 1033
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1034
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v3}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v3}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1035
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v3}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 1037
    :cond_0
    if-eqz p1, :cond_2

    .line 1038
    const-string v3, "LivingRoom"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onPostExecute: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 1041
    .local v1, "jResponse":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1042
    new-instance v2, Lorg/json/JSONArray;

    const-string v3, "result"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 1043
    .local v2, "resultArray":Lorg/json/JSONArray;
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v3, v2}, Lcom/iot/engine/LivingRoom;->access$1300(Lcom/iot/engine/LivingRoom;Lorg/json/JSONArray;)V

    .line 1044
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v3}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    .end local v1    # "jResponse":Lorg/json/JSONObject;
    .end local v2    # "resultArray":Lorg/json/JSONArray;
    :cond_1
    :goto_0
    return-void

    .line 1046
    :catch_0
    move-exception v0

    .line 1047
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v3}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 1048
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1052
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v3}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 1053
    iget-object v3, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v3}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v4}, Lcom/iot/engine/LivingRoom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060082

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 1010
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 1011
    iget-object v0, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    const-string v3, "Retrieving appliances list"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/LivingRoom;->access$1102(Lcom/iot/engine/LivingRoom;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 1012
    iget-object v0, p0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v0}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 1013
    return-void
.end method
