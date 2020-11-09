.class LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;
.super Landroid/os/AsyncTask;
.source "ProfileScheduleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/ProfileScheduleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDeleteProfileScheduleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field mScheduleId:Ljava/lang/String;

.field final synthetic this$0:LFragments/ProfileScheduleListFragment;


# direct methods
.method private constructor <init>(LFragments/ProfileScheduleListFragment;)V
    .locals 1

    .prologue
    .line 157
    iput-object p1, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 158
    const-string v0, ""

    iput-object v0, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->mScheduleId:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(LFragments/ProfileScheduleListFragment;LFragments/ProfileScheduleListFragment$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/ProfileScheduleListFragment;
    .param p2, "x1"    # LFragments/ProfileScheduleListFragment$1;

    .prologue
    .line 157
    invoke-direct {p0, p1}, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;-><init>(LFragments/ProfileScheduleListFragment;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 157
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 168
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 169
    .local v3, "res":LSession/Constants;
    new-instance v5, LSession/SessionManager;

    iget-object v6, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v6}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-direct {v5, v6}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 170
    .local v5, "session":LSession/SessionManager;
    const-string v4, ""

    .local v4, "response":Ljava/lang/String;
    const-string v2, ""

    .line 171
    .local v2, "messageType":Ljava/lang/String;
    const/4 v6, 0x0

    aget-object v1, p1, v6

    .line 172
    .local v1, "mList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v7, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 173
    const-string v2, "Internet"

    .line 179
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 180
    .local v0, "jBody":Lorg/json/JSONObject;
    const-string v6, "profile_schedule_id"

    invoke-virtual {v1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iput-object v6, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->mScheduleId:Ljava/lang/String;

    .line 181
    const-string v6, "userId"

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v6, "scheduleId"

    const-string v7, "profile_schedule_id"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v6, "profileId"

    const-string v7, "profile_id"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v6, "scheduleDateTime"

    const-string v7, "Schedule_dates"

    invoke-virtual {v1, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v6, "messageFrom"

    invoke-virtual {v0, v6, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 187
    const-string v6, "ProfileScheduleListFrag"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Profile Schedule Delete "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/schedule/deletescheduleprofile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v6, v7, v8}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 191
    .end local v0    # "jBody":Lorg/json/JSONObject;
    :goto_1
    return-object v4

    .line 175
    :cond_0
    const-string v2, "Localhub"

    goto/16 :goto_0

    .line 189
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 157
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 196
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 198
    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v2}, LFragments/ProfileScheduleListFragment;->access$300(LFragments/ProfileScheduleListFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v2}, LFragments/ProfileScheduleListFragment;->access$300(LFragments/ProfileScheduleListFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 199
    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v2}, LFragments/ProfileScheduleListFragment;->access$300(LFragments/ProfileScheduleListFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->cancel()V

    .line 202
    :cond_0
    if-eqz p1, :cond_2

    .line 203
    const-string v2, "ProfileScheduleListFrag"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute: result"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 206
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 207
    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v2}, LFragments/ProfileScheduleListFragment;->access$400(LFragments/ProfileScheduleListFragment;)LDatabase/DatabaseHandler;

    move-result-object v2

    iget-object v3, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->mScheduleId:Ljava/lang/String;

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteProfileSchedule(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v2}, LFragments/ProfileScheduleListFragment;->access$500(LFragments/ProfileScheduleListFragment;)V

    .line 209
    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v2}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v3}, LFragments/ProfileScheduleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060088

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 213
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 215
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v2}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v3}, LFragments/ProfileScheduleListFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060082

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 161
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 162
    iget-object v0, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-virtual {v2}, LFragments/ProfileScheduleListFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Delete Mood schedule"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, LFragments/ProfileScheduleListFragment;->access$302(LFragments/ProfileScheduleListFragment;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 163
    iget-object v0, p0, LFragments/ProfileScheduleListFragment$AsyncDeleteProfileScheduleTask;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v0}, LFragments/ProfileScheduleListFragment;->access$300(LFragments/ProfileScheduleListFragment;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 164
    return-void
.end method
