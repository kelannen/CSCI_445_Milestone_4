.class Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;
.super Landroid/os/AsyncTask;
.source "LivingRoom.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/LivingRoom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTurnONAllAppliances"
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
.field private status:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/LivingRoom;


# direct methods
.method private constructor <init>(Lcom/iot/engine/LivingRoom;)V
    .locals 0

    .prologue
    .line 933
    iput-object p1, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/LivingRoom;Lcom/iot/engine/LivingRoom$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p2, "x1"    # Lcom/iot/engine/LivingRoom$1;

    .prologue
    .line 933
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;-><init>(Lcom/iot/engine/LivingRoom;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 933
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 944
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    .line 945
    .local v0, "con":LSession/Constants;
    const/4 v2, 0x0

    .line 947
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 948
    .local v3, "session":LSession/SessionManager;
    const/4 v4, 0x0

    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->status:Ljava/lang/String;

    .line 949
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-static {v4, v5}, Lcom/iot/engine/LivingRoom;->access$1200(Lcom/iot/engine/LivingRoom;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "mRequest":Ljava/lang/String;
    const-string v4, "Turn All Request "

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/changeStatusByRoom"

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

    .line 955
    .end local v1    # "mRequest":Ljava/lang/String;
    .end local v3    # "session":LSession/SessionManager;
    :goto_0
    return-object v2

    .line 952
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 933
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 960
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 961
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 962
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 965
    :cond_0
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4

    .line 967
    const-string v4, "Living Turn All Room "

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 971
    .local v2, "jResult":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 972
    new-instance v1, Lorg/json/JSONArray;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 973
    .local v1, "jArrResult":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 974
    invoke-virtual {v1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    .line 975
    .local v3, "jSwitch":Lorg/json/JSONObject;
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$900(Lcom/iot/engine/LivingRoom;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, LDatabase/DatabaseHandler;->isDimmerSwitch(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 976
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$900(Lcom/iot/engine/LivingRoom;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->status:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, LDatabase/DatabaseHandler;->updateAllDimmerSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 978
    :cond_1
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$900(Lcom/iot/engine/LivingRoom;)LDatabase/DatabaseHandler;

    move-result-object v4

    const-string v5, "siwtchid"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->status:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, LDatabase/DatabaseHandler;->updateAllSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 985
    .end local v0    # "i":I
    .end local v1    # "jArrResult":Lorg/json/JSONArray;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "jSwitch":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 990
    :cond_2
    :goto_2
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v4}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 991
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-virtual {v4, v7}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 992
    return-void

    .line 983
    .restart local v2    # "jResult":Lorg/json/JSONObject;
    :cond_3
    :try_start_1
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "msg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 988
    .end local v2    # "jResult":Lorg/json/JSONObject;
    :cond_4
    iget-object v4, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v4}, Lcom/iot/engine/LivingRoom;->access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;

    move-result-object v4

    const-string v5, "Kindly try again."

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 937
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 938
    iget-object v0, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    const-string v3, " Kindly wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/LivingRoom;->access$1102(Lcom/iot/engine/LivingRoom;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 939
    iget-object v0, p0, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->this$0:Lcom/iot/engine/LivingRoom;

    invoke-static {v0}, Lcom/iot/engine/LivingRoom;->access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 940
    return-void
.end method
