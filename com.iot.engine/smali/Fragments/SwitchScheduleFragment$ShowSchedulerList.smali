.class LFragments/SwitchScheduleFragment$ShowSchedulerList;
.super Landroid/os/AsyncTask;
.source "SwitchScheduleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/SwitchScheduleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ShowSchedulerList"
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
.field messageType:Ljava/lang/String;

.field final synthetic this$0:LFragments/SwitchScheduleFragment;


# direct methods
.method private constructor <init>(LFragments/SwitchScheduleFragment;)V
    .locals 1

    .prologue
    .line 87
    iput-object p1, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 88
    const-string v0, ""

    iput-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->messageType:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LFragments/SwitchScheduleFragment;LFragments/SwitchScheduleFragment$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/SwitchScheduleFragment;
    .param p2, "x1"    # LFragments/SwitchScheduleFragment$1;

    .prologue
    .line 87
    invoke-direct {p0, p1}, LFragments/SwitchScheduleFragment$ShowSchedulerList;-><init>(LFragments/SwitchScheduleFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 87
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/SwitchScheduleFragment$ShowSchedulerList;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 98
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 99
    .local v3, "request":LSession/Constants;
    const/4 v1, 0x0

    .line 100
    .local v1, "mResponse":Ljava/lang/String;
    new-instance v4, LSession/SessionManager;

    iget-object v5, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-virtual {v5}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v4, v5}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 102
    .local v4, "sessionManager":LSession/SessionManager;
    :try_start_0
    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v6, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "Internet"

    :goto_0
    iput-object v5, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->messageType:Ljava/lang/String;

    .line 103
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .local v0, "jMain":Lorg/json/JSONObject;
    const-string v5, "userId"

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 105
    const-string v5, "messageFrom"

    iget-object v6, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->messageType:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 106
    const-string v5, "JSON BODY :"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/schedule/getscheduleswitch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 108
    if-eqz v1, :cond_0

    .line 109
    iget-object v5, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v5, v1}, LFragments/SwitchScheduleFragment;->access$100(LFragments/SwitchScheduleFragment;Ljava/lang/String;)V

    :cond_0
    move-object v2, v1

    .line 113
    .end local v0    # "jMain":Lorg/json/JSONObject;
    .end local v1    # "mResponse":Ljava/lang/String;
    .local v2, "mResponse":Ljava/lang/String;
    :goto_1
    return-object v2

    .line 102
    .end local v2    # "mResponse":Ljava/lang/String;
    .restart local v1    # "mResponse":Ljava/lang/String;
    :cond_1
    const-string v5, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 112
    :catch_0
    move-exception v5

    move-object v2, v1

    .line 113
    .end local v1    # "mResponse":Ljava/lang/String;
    .restart local v2    # "mResponse":Ljava/lang/String;
    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 87
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/SwitchScheduleFragment$ShowSchedulerList;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 120
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v0}, LFragments/SwitchScheduleFragment;->access$000(LFragments/SwitchScheduleFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v0}, LFragments/SwitchScheduleFragment;->access$000(LFragments/SwitchScheduleFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v0}, LFragments/SwitchScheduleFragment;->access$000(LFragments/SwitchScheduleFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 124
    :cond_0
    if-nez p1, :cond_1

    .line 125
    const-string v0, "SwitchScheduleFragment"

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

    .line 126
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-virtual {v0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-virtual {v1}, LFragments/SwitchScheduleFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 129
    :cond_1
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-virtual {v0}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NotifyScheduleList"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 132
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v0}, LFragments/SwitchScheduleFragment;->access$200(LFragments/SwitchScheduleFragment;)V

    .line 133
    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 91
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 92
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-virtual {v2}, LFragments/SwitchScheduleFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Kindly wait"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, LFragments/SwitchScheduleFragment;->access$002(LFragments/SwitchScheduleFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 93
    iget-object v0, p0, LFragments/SwitchScheduleFragment$ShowSchedulerList;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v0}, LFragments/SwitchScheduleFragment;->access$000(LFragments/SwitchScheduleFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 94
    return-void
.end method
