.class LFragments/Tab1$AsyncEditScheduleTask;
.super Landroid/os/AsyncTask;
.source "Tab1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Tab1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncEditScheduleTask"
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
.field dimmerValue:Ljava/lang/String;

.field final synthetic this$0:LFragments/Tab1;


# direct methods
.method private constructor <init>(LFragments/Tab1;)V
    .locals 0

    .prologue
    .line 715
    iput-object p1, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFragments/Tab1;LFragments/Tab1$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Tab1;
    .param p2, "x1"    # LFragments/Tab1$1;

    .prologue
    .line 715
    invoke-direct {p0, p1}, LFragments/Tab1$AsyncEditScheduleTask;-><init>(LFragments/Tab1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 715
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Tab1$AsyncEditScheduleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 728
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 729
    .local v1, "req":LSession/Constants;
    const/4 v2, 0x0

    .line 730
    .local v2, "response":Ljava/lang/String;
    sget-object v4, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 731
    iget-object v4, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    const-string v5, "Internet"

    invoke-static {v4, v5}, LFragments/Tab1;->access$902(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;

    .line 737
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 738
    .local v0, "jsonObject":Lorg/json/JSONObject;
    const-string v4, "scheduleSwitchId"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$1400(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v4, "switchId"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$1000(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v4, "switchStatus"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$1500(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 741
    const-string v4, "scheduleDateTime"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$1600(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 742
    const-string v4, "userId"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$1100(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 743
    const-string v4, "lockStatus"

    const-string v5, "0"

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 744
    const-string v4, "messageFrom"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$900(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 745
    const-string v4, "dimmerValue"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->dimmerValue:Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 746
    const-string v4, "dimmerStatus"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$100(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 748
    const-string v4, "repeatStatus"

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$300(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 751
    iget-object v4, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v4}, LFragments/Tab1;->access$300(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    const-string v4, ","

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$1200(LFragments/Tab1;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 757
    .local v3, "weekDay":Ljava/lang/String;
    :goto_1
    const-string v4, "repeatWeek"

    invoke-virtual {v0, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 759
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/schedule/editscheduleswitch"

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

    iget-object v6, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$1700(LFragments/Tab1;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 760
    const-string v4, "Tab1"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Edit doInBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 762
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "weekDay":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 734
    :cond_0
    iget-object v4, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    const-string v5, "Localhub"

    invoke-static {v4, v5}, LFragments/Tab1;->access$902(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 754
    .restart local v0    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v3, "NA"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v3    # "weekDay":Ljava/lang/String;
    goto :goto_1

    .line 761
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "weekDay":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 715
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Tab1$AsyncEditScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 766
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 768
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 769
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 772
    :cond_0
    if-eqz p1, :cond_3

    .line 774
    :try_start_0
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 775
    .local v8, "jObj":Lorg/json/JSONObject;
    const-string v0, "status"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "SUCCESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 776
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$900(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Internet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 777
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$1800(LFragments/Tab1;)V

    .line 779
    :cond_1
    new-instance v9, Lorg/json/JSONObject;

    const-string v0, "result"

    invoke-virtual {v8, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 780
    .local v9, "jResult":Lorg/json/JSONObject;
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$2100(LFragments/Tab1;)LDatabase/DatabaseHandler;

    move-result-object v0

    const-string v1, "scheduleSwitchId"

    invoke-virtual {v9, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v2}, LFragments/Tab1;->access$1900(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "switchStatus"

    invoke-virtual {v9, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v4}, LFragments/Tab1;->access$2000(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, LFragments/Tab1$AsyncEditScheduleTask;->dimmerValue:Ljava/lang/String;

    const-string v6, "repeatWeek"

    invoke-virtual {v9, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, LDatabase/DatabaseHandler;->updateSwitchSchedule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$1800(LFragments/Tab1;)V

    .line 782
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    iget-object v0, v0, LFragments/Tab1;->context:Landroid/content/Context;

    iget-object v1, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-virtual {v1}, LFragments/Tab1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060089

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 791
    .end local v8    # "jObj":Lorg/json/JSONObject;
    .end local v9    # "jResult":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 784
    .restart local v8    # "jObj":Lorg/json/JSONObject;
    :cond_2
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    iget-object v0, v0, LFragments/Tab1;->context:Landroid/content/Context;

    const-string v1, "msg"

    invoke-virtual {v8, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 786
    .end local v8    # "jObj":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 788
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_3
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    iget-object v0, v0, LFragments/Tab1;->context:Landroid/content/Context;

    iget-object v1, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-virtual {v1}, LFragments/Tab1;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 719
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 720
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-virtual {v2}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LFragments/Tab1;->access$802(LFragments/Tab1;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 721
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Kindly wait"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 723
    iget-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 724
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LFragments/Tab1$AsyncEditScheduleTask;->this$0:LFragments/Tab1;

    iget-object v1, v1, LFragments/Tab1;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LFragments/Tab1$AsyncEditScheduleTask;->dimmerValue:Ljava/lang/String;

    .line 725
    return-void
.end method
