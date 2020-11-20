.class LFragments/Home$AsyncEnterLockPasscode;
.super Landroid/os/AsyncTask;
.source "Home.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Home;
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
.field final synthetic this$0:LFragments/Home;


# direct methods
.method private constructor <init>(LFragments/Home;)V
    .locals 0

    .prologue
    .line 969
    iput-object p1, p0, LFragments/Home$AsyncEnterLockPasscode;->this$0:LFragments/Home;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 969
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Home$AsyncEnterLockPasscode;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 978
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 979
    .local v1, "req":LSession/Constants;
    const/4 v2, 0x0

    .line 980
    .local v2, "response":Ljava/lang/String;
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, LFragments/Home$AsyncEnterLockPasscode;->this$0:LFragments/Home;

    invoke-virtual {v4}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 983
    .local v3, "sessionManager":LSession/SessionManager;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 984
    .local v0, "jObj":Lorg/json/JSONObject;
    const-string v4, "userId"

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 985
    const-string v4, "messageFrom"

    iget-object v5, p0, LFragments/Home$AsyncEnterLockPasscode;->this$0:LFragments/Home;

    invoke-static {v5}, LFragments/Home;->access$1900(LFragments/Home;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 986
    const-string v4, "lockCode"

    invoke-virtual {v3}, LSession/SessionManager;->getLockCode()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 987
    const-string v4, "switchId"

    invoke-virtual {v3}, LSession/SessionManager;->getLockSwitchId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 989
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/switch/homeunlock"

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

    .line 993
    .end local v0    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 991
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 969
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Home$AsyncEnterLockPasscode;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 998
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 1000
    if-eqz p1, :cond_0

    .line 1004
    :try_start_0
    iget-object v0, p0, LFragments/Home$AsyncEnterLockPasscode;->this$0:LFragments/Home;

    invoke-virtual {v0}, LFragments/Home;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Home Unlock Successfully"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1009
    :cond_0
    :goto_0
    return-void

    .line 1006
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 972
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 973
    return-void
.end method
