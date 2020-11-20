.class LFragments/Tab1$AsyncScheduleTask;
.super Landroid/os/AsyncTask;
.source "Tab1.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Tab1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncScheduleTask"
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
    .line 600
    iput-object p1, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(LFragments/Tab1;LFragments/Tab1$1;)V
    .locals 0
    .param p1, "x0"    # LFragments/Tab1;
    .param p2, "x1"    # LFragments/Tab1$1;

    .prologue
    .line 600
    invoke-direct {p0, p1}, LFragments/Tab1$AsyncScheduleTask;-><init>(LFragments/Tab1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 600
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Tab1$AsyncScheduleTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 614
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 615
    .local v1, "res":LSession/Constants;
    const/4 v2, 0x0

    .line 617
    .local v2, "response":Ljava/lang/String;
    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v6, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 618
    iget-object v5, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    const-string v6, "Internet"

    invoke-static {v5, v6}, LFragments/Tab1;->access$902(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;

    .line 625
    :goto_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 626
    .local v0, "jReqBody":Lorg/json/JSONObject;
    const-string v5, "switchId"

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$1000(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 627
    const-string v5, "switchStatus"

    const/4 v6, 0x0

    aget-object v6, p1, v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 628
    const-string v5, "lockStatus"

    const/4 v6, 0x1

    aget-object v6, p1, v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 629
    const-string v5, "scheduleDateTime"

    const/4 v6, 0x2

    aget-object v6, p1, v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 630
    const-string v5, "userId"

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$1100(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 631
    const-string v5, "messageFrom"

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$900(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 632
    const-string v5, "dimmerValue"

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->dimmerValue:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 633
    const-string v5, "dimmerStatus"

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$100(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 634
    const-string v5, "repeatStatus"

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$300(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 637
    iget-object v5, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v5}, LFragments/Tab1;->access$300(LFragments/Tab1;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 638
    const-string v5, ","

    iget-object v6, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v6}, LFragments/Tab1;->access$1200(LFragments/Tab1;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 643
    .local v4, "weekDay":Ljava/lang/String;
    :goto_1
    const-string v5, "repeatWeek"

    invoke-virtual {v0, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 645
    const-string v5, "Tab1"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " Schdule doInBackground: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    new-instance v3, LSession/SessionManager;

    iget-object v5, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-virtual {v5}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v3, v5}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 648
    .local v3, "session":LSession/SessionManager;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/schedule/scheduleswitch"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 652
    .end local v0    # "jReqBody":Lorg/json/JSONObject;
    .end local v3    # "session":LSession/SessionManager;
    .end local v4    # "weekDay":Ljava/lang/String;
    :goto_2
    return-object v2

    .line 621
    :cond_0
    iget-object v5, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    const-string v6, "Localhub"

    invoke-static {v5, v6}, LFragments/Tab1;->access$902(LFragments/Tab1;Ljava/lang/String;)Ljava/lang/String;

    goto/16 :goto_0

    .line 640
    .restart local v0    # "jReqBody":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    const-string v4, "NA"
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .restart local v4    # "weekDay":Ljava/lang/String;
    goto :goto_1

    .line 650
    .end local v0    # "jReqBody":Lorg/json/JSONObject;
    .end local v4    # "weekDay":Ljava/lang/String;
    :catch_0
    move-exception v5

    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 600
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Tab1$AsyncScheduleTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 657
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 658
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 659
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->cancel()V

    .line 661
    :cond_0
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    iget-object v1, p0, LFragments/Tab1$AsyncScheduleTask;->dimmerValue:Ljava/lang/String;

    invoke-static {v0, p1, v1}, LFragments/Tab1;->access$1300(LFragments/Tab1;Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 604
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 605
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-virtual {v2}, LFragments/Tab1;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, LFragments/Tab1;->access$802(LFragments/Tab1;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 606
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Kindly wait"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 607
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 608
    iget-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    invoke-static {v0}, LFragments/Tab1;->access$800(LFragments/Tab1;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LFragments/Tab1$AsyncScheduleTask;->this$0:LFragments/Tab1;

    iget-object v1, v1, LFragments/Tab1;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v1}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->getProgress()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4b

    div-int/lit8 v1, v1, 0x64

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, LFragments/Tab1$AsyncScheduleTask;->dimmerValue:Ljava/lang/String;

    .line 610
    return-void
.end method
