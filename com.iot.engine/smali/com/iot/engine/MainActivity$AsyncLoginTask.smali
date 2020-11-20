.class Lcom/iot/engine/MainActivity$AsyncLoginTask;
.super Landroid/os/AsyncTask;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncLoginTask"
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
.field accPassword:Ljava/lang/String;

.field final synthetic this$0:Lcom/iot/engine/MainActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/MainActivity;)V
    .locals 0

    .prologue
    .line 719
    iput-object p1, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/MainActivity;Lcom/iot/engine/MainActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/MainActivity;
    .param p2, "x1"    # Lcom/iot/engine/MainActivity$1;

    .prologue
    .line 719
    invoke-direct {p0, p1}, Lcom/iot/engine/MainActivity$AsyncLoginTask;-><init>(Lcom/iot/engine/MainActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 719
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncLoginTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 732
    const-string v3, ""

    .line 733
    .local v3, "response":Ljava/lang/String;
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 735
    .local v2, "req":LSession/Constants;
    const/4 v4, 0x1

    :try_start_0
    aget-object v4, p1, v4

    iput-object v4, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->accPassword:Ljava/lang/String;

    .line 736
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "login"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 737
    .local v0, "appUrl":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 738
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v4, "username"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 739
    const-string v4, "password"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 740
    const-string v4, "MainActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground: Body "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 744
    .end local v0    # "appUrl":Ljava/lang/String;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 743
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 719
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/MainActivity$AsyncLoginTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 10
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const v8, 0x7f060082

    const/4 v9, 0x0

    .line 749
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 751
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v6}, Lcom/iot/engine/MainActivity;->access$600(Lcom/iot/engine/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 752
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v6}, Lcom/iot/engine/MainActivity;->access$600(Lcom/iot/engine/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/ProgressDialog;->dismiss()V

    .line 755
    :cond_0
    if-eqz p1, :cond_3

    .line 757
    :try_start_0
    const-string v6, "MainActivity"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPostExecute: Result "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 759
    .local v3, "jobj":Lorg/json/JSONObject;
    const-string v6, "status"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "SUCCESS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 760
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v6, v6, Lcom/iot/engine/MainActivity;->dialogDeviceID:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 761
    new-instance v2, Lorg/json/JSONObject;

    const-string v6, "result"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 762
    .local v2, "jResult":Lorg/json/JSONObject;
    const-string v6, "isFirstTimeLogin"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 764
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    const-string v7, "Sharecontrol not confirm go through login process"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 794
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :goto_0
    return-void

    .line 768
    .restart local v2    # "jResult":Lorg/json/JSONObject;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_1
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v0, v6}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 769
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 770
    .local v4, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v6, "user_id"

    const-string v7, "id"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 771
    const-string v6, "user_name"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "firstName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "lastName"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 772
    const-string v6, "email"

    const-string v7, "email"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 773
    const-string v6, "user_type"

    const-string v7, "userType"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    const-string v6, "mobile_no"

    const-string v7, "phoneNumber"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v6, "image_url"

    const-string v7, "image"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 776
    const-string v6, "token"

    const-string v7, "token"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 777
    const-string v6, "home_id"

    const-string v7, "homeId"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 778
    const-string v6, "isActive"

    const-string v7, "0"

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    const-string v6, "password"

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->accPassword:Ljava/lang/String;

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 780
    const-string v6, "birth_date"

    const-string v7, "birthDate"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    invoke-virtual {v0, v4}, LDatabase/DatabaseHandler;->insertUserAccount(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v5

    .line 782
    .local v5, "message":Ljava/lang/String;
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    const/4 v7, 0x1

    invoke-static {v6, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 788
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v2    # "jResult":Lorg/json/JSONObject;
    .end local v3    # "jobj":Lorg/json/JSONObject;
    .end local v4    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v5    # "message":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 789
    .local v1, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v7}, Lcom/iot/engine/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06006f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 786
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v3    # "jobj":Lorg/json/JSONObject;
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v7}, Lcom/iot/engine/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f060082

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    .line 792
    .end local v3    # "jobj":Lorg/json/JSONObject;
    :cond_3
    iget-object v6, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    iget-object v7, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-virtual {v7}, Lcom/iot/engine/MainActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 723
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 724
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v2, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v2}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/iot/engine/MainActivity;->access$602(Lcom/iot/engine/MainActivity;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 725
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$600(Lcom/iot/engine/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const-string v1, "Account is adding "

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 726
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$600(Lcom/iot/engine/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 727
    iget-object v0, p0, Lcom/iot/engine/MainActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/MainActivity;

    invoke-static {v0}, Lcom/iot/engine/MainActivity;->access$600(Lcom/iot/engine/MainActivity;)Landroid/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 728
    return-void
.end method
