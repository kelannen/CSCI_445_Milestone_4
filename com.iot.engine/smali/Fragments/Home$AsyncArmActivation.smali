.class LFragments/Home$AsyncArmActivation;
.super Landroid/os/AsyncTask;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncArmActivation"
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
.field mArmFlag:Ljava/lang/String;

.field final synthetic this$0:LFragments/Home;


# direct methods
.method private constructor <init>(LFragments/Home;)V
    .locals 0

    .prologue
    .line 918
    iput-object p1, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFragments/Home;LFragments/Home$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Home;
    .param p2, "x1"    # LFragments/Home$1;

    .prologue
    .line 918
    invoke-direct {p0, p1}, LFragments/Home$AsyncArmActivation;-><init>(LFragments/Home;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 918
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Home$AsyncArmActivation;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 926
    const/4 v1, 0x0

    .line 927
    .local v1, "response":Ljava/lang/String;
    aget-object v2, p1, v2

    iput-object v2, p0, LFragments/Home$AsyncArmActivation;->mArmFlag:Ljava/lang/String;

    .line 930
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 931
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v2, "userId"

    iget-object v3, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-static {v3}, LFragments/Home;->access$400(LFragments/Home;)LSession/SessionManager;

    move-result-object v3

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 932
    const-string v2, "isArmed"

    const/4 v3, 0x0

    aget-object v3, p1, v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 933
    const-string v2, "messageFrom"

    iget-object v3, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-static {v3}, LFragments/Home;->access$1900(LFragments/Home;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 934
    const-string v2, "Home"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isArmed Request"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/home/armhome"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-static {v5}, LFragments/Home;->access$400(LFragments/Home;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 938
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 937
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 918
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Home$AsyncArmActivation;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 943
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 945
    if-eqz p1, :cond_0

    .line 947
    const-string v1, "Arm Details"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 952
    .local v0, "jResult":Lorg/json/JSONObject;
    iget-object v1, p0, LFragments/Home$AsyncArmActivation;->mArmFlag:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 953
    iget-object v1, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$400(LFragments/Home;)LSession/SessionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, LSession/SessionManager;->setArmFlag(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 965
    .end local v0    # "jResult":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    iget-object v1, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$1600(LFragments/Home;)V

    .line 966
    return-void

    .line 956
    .restart local v0    # "jResult":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    iget-object v1, p0, LFragments/Home$AsyncArmActivation;->this$0:LFragments/Home;

    invoke-static {v1}, LFragments/Home;->access$400(LFragments/Home;)LSession/SessionManager;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, LSession/SessionManager;->setArmFlag(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 961
    .end local v0    # "jResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 922
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 923
    return-void
.end method
