.class Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;
.super Landroid/os/AsyncTask;
.source "UserProfile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/UserProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncUpdateProfileTask"
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
.field final synthetic this$0:Lcom/iot/engine/UserProfile;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 331
    iput-object p1, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 331
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 341
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 342
    .local v2, "net":LSession/Constants;
    const/4 v1, 0x0

    .line 344
    .local v1, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 345
    .local v0, "jBody":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v4}, Lcom/iot/engine/UserProfile;->access$200(Lcom/iot/engine/UserProfile;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    const-string v3, "firstName"

    iget-object v4, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v4}, Lcom/iot/engine/UserProfile;->access$300(Lcom/iot/engine/UserProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 347
    const-string v3, "lastName"

    iget-object v4, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v4}, Lcom/iot/engine/UserProfile;->access$400(Lcom/iot/engine/UserProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v3, "image"

    iget-object v4, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v4}, Lcom/iot/engine/UserProfile;->access$500(Lcom/iot/engine/UserProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v3, "phoneNumber"

    iget-object v4, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v4}, Lcom/iot/engine/UserProfile;->access$600(Lcom/iot/engine/UserProfile;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v3, "Update Profile request "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v5}, Lcom/iot/engine/UserProfile;->access$200(Lcom/iot/engine/UserProfile;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 354
    .end local v0    # "jBody":Lorg/json/JSONObject;
    :goto_0
    return-object v1

    .line 353
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 331
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 359
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 360
    const-string v0, "Profile response "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    iget-object v0, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0}, Lcom/iot/engine/UserProfile;->access$700(Lcom/iot/engine/UserProfile;)V

    .line 362
    if-eqz p1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0, p1}, Lcom/iot/engine/UserProfile;->access$800(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V

    .line 367
    :goto_0
    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    const-string v1, "Kindly try again."

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 335
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 336
    iget-object v0, p0, Lcom/iot/engine/UserProfile$AsyncUpdateProfileTask;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0}, Lcom/iot/engine/UserProfile;->access$100(Lcom/iot/engine/UserProfile;)V

    .line 337
    return-void
.end method
