.class LFragments/Home$AsyncTaskForModeActivation;
.super Landroid/os/AsyncTask;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Home;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForModeActivation"
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
.field db:LDatabase/DatabaseHandler;

.field modeData:Ljava/util/HashMap;
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

.field final synthetic this$0:LFragments/Home;


# direct methods
.method private constructor <init>(LFragments/Home;)V
    .locals 0

    .prologue
    .line 847
    iput-object p1, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFragments/Home;LFragments/Home$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Home;
    .param p2, "x1"    # LFragments/Home$1;

    .prologue
    .line 847
    invoke-direct {p0, p1}, LFragments/Home$AsyncTaskForModeActivation;-><init>(LFragments/Home;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 847
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Home$AsyncTaskForModeActivation;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 862
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 863
    .local v1, "req":LSession/Constants;
    const/4 v2, 0x0

    .line 864
    .local v2, "response":Ljava/lang/String;
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v4}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 866
    .local v3, "sessionManager":LSession/SessionManager;
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->db:LDatabase/DatabaseHandler;

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v4, v5}, LDatabase/DatabaseHandler;->getModeInfoByID(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    iput-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->modeData:Ljava/util/HashMap;

    .line 868
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 869
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v4, "userId"

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 870
    const-string v4, "profileId"

    iget-object v5, p0, LFragments/Home$AsyncTaskForModeActivation;->modeData:Ljava/util/HashMap;

    const-string v6, "_id"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 871
    const-string v4, "messageFrom"

    const-string v5, "Local"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 872
    const-string v4, "Home"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground: turnOnOffAll"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 874
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/turnOnOffAll"

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

    .line 878
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 876
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 847
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Home$AsyncTaskForModeActivation;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f060082

    const/4 v6, 0x0

    .line 883
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 885
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-static {v4}, LFragments/Home;->access$1800(LFragments/Home;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-static {v4}, LFragments/Home;->access$1800(LFragments/Home;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 886
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-static {v4}, LFragments/Home;->access$1800(LFragments/Home;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 889
    :cond_0
    if-eqz p1, :cond_4

    .line 890
    const-string v4, "Home"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 893
    .local v3, "jResult":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 894
    new-instance v2, Lorg/json/JSONArray;

    const-string v4, "result"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 896
    .local v2, "jMain":Lorg/json/JSONArray;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 897
    invoke-virtual {v2, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 898
    .local v1, "jArr":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 899
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->db:LDatabase/DatabaseHandler;

    const-string v5, "siwtchid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "status"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, LDatabase/DatabaseHandler;->updateAllSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 901
    :cond_1
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->db:LDatabase/DatabaseHandler;

    const-string v5, "profileSwitchid"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "profileStatus"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, LDatabase/DatabaseHandler;->updateAllSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 911
    .end local v0    # "i":I
    .end local v1    # "jArr":Lorg/json/JSONObject;
    .end local v2    # "jMain":Lorg/json/JSONArray;
    .end local v3    # "jResult":Lorg/json/JSONObject;
    :catch_0
    move-exception v4

    .line 916
    :goto_2
    return-void

    .line 905
    .restart local v0    # "i":I
    .restart local v2    # "jMain":Lorg/json/JSONArray;
    .restart local v3    # "jResult":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v4}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    const-string v5, "Mood completed"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 906
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v4}, LDatabase/DatabaseHandler;->updateAllActiveFlag()V

    .line 907
    iget-object v5, p0, LFragments/Home$AsyncTaskForModeActivation;->db:LDatabase/DatabaseHandler;

    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->modeData:Ljava/util/HashMap;

    const-string v6, "_id"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, LDatabase/DatabaseHandler;->updateActiveFlag(Ljava/lang/String;)V

    goto :goto_2

    .line 909
    .end local v0    # "i":I
    .end local v2    # "jMain":Lorg/json/JSONArray;
    :cond_3
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v4}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v5}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060082

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 914
    .end local v3    # "jResult":Lorg/json/JSONObject;
    :cond_4
    iget-object v4, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v4}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v5}, LFragments/Home;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_2
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 852
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 853
    iget-object v0, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v2}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LFragments/Home;->access$1802(LFragments/Home;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 854
    iget-object v0, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$1800(LFragments/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Completing your wish"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 855
    iget-object v0, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$1800(LFragments/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 856
    iget-object v0, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-static {v0}, LFragments/Home;->access$1800(LFragments/Home;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 857
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Home$AsyncTaskForModeActivation;->this$0:LFragments/Home;

    invoke-virtual {v1}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Home$AsyncTaskForModeActivation;->db:LDatabase/DatabaseHandler;

    .line 858
    return-void
.end method
