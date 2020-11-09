.class Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;
.super Landroid/os/AsyncTask;
.source "UserAccountActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/UserAccountActivity;
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
.field final synthetic this$0:Lcom/iot/engine/UserAccountActivity;


# direct methods
.method private constructor <init>(Lcom/iot/engine/UserAccountActivity;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/UserAccountActivity;Lcom/iot/engine/UserAccountActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/UserAccountActivity;
    .param p2, "x1"    # Lcom/iot/engine/UserAccountActivity$1;

    .prologue
    .line 142
    invoke-direct {p0, p1}, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;-><init>(Lcom/iot/engine/UserAccountActivity;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 142
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 152
    const-string v3, ""

    .line 153
    .local v3, "response":Ljava/lang/String;
    new-instance v2, LSession/Constants;

    invoke-direct {v2}, LSession/Constants;-><init>()V

    .line 156
    .local v2, "req":LSession/Constants;
    :try_start_0
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

    .line 157
    .local v0, "appUrl":Ljava/lang/String;
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 158
    .local v1, "jObj":Lorg/json/JSONObject;
    const-string v4, "username"

    const/4 v5, 0x0

    aget-object v5, p1, v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 159
    const-string v4, "password"

    const/4 v5, 0x1

    aget-object v5, p1, v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 160
    const-string v4, "UserAccountActivity"

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

    .line 161
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

    .line 164
    .end local v0    # "appUrl":Ljava/lang/String;
    .end local v1    # "jObj":Lorg/json/JSONObject;
    :goto_0
    return-object v3

    .line 163
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 142
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 8
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const v7, 0x7f060082

    const/4 v6, 0x0

    .line 169
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 171
    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-static {v4}, Lcom/iot/engine/UserAccountActivity;->access$100(Lcom/iot/engine/UserAccountActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-static {v4}, Lcom/iot/engine/UserAccountActivity;->access$100(Lcom/iot/engine/UserAccountActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 172
    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-static {v4}, Lcom/iot/engine/UserAccountActivity;->access$100(Lcom/iot/engine/UserAccountActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v4

    invoke-virtual {v4}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 175
    :cond_0
    if-eqz p1, :cond_3

    .line 177
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 178
    .local v2, "jobj":Lorg/json/JSONObject;
    const-string v4, "status"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SUCCESS"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 179
    new-instance v1, Lorg/json/JSONObject;

    const-string v4, "result"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 180
    .local v1, "jResult":Lorg/json/JSONObject;
    const-string v4, "isFirstTimeLogin"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "true"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 181
    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    const-string v5, "EmailId not assign to any home"

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 196
    :goto_0
    const-string v4, "UserAccountActivity"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPostExecute: Result "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    .end local v1    # "jResult":Lorg/json/JSONObject;
    .end local v2    # "jobj":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 183
    .restart local v1    # "jResult":Lorg/json/JSONObject;
    .restart local v2    # "jobj":Lorg/json/JSONObject;
    :cond_1
    new-instance v0, LDatabase/DatabaseHandler;

    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-direct {v0, v4}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 184
    .local v0, "db":LDatabase/DatabaseHandler;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "user_id"

    const-string v5, "id"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v4, "user_name"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "firstName"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "lastName"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v4, "email"

    const-string v5, "email"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    const-string v4, "user_type"

    const-string v5, "userType"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    const-string v4, "mobile_no"

    const-string v5, "phoneNumber"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    const-string v4, "image_url"

    const-string v5, "image"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    const-string v4, "token"

    const-string v5, "token"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    const-string v4, "home_id"

    const-string v5, "homeId"

    invoke-virtual {v1, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    const-string v5, "Account is added successfully."

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 200
    .end local v0    # "db":LDatabase/DatabaseHandler;
    .end local v1    # "jResult":Lorg/json/JSONObject;
    .end local v2    # "jobj":Lorg/json/JSONObject;
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 198
    .restart local v2    # "jobj":Lorg/json/JSONObject;
    :cond_2
    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    iget-object v5, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-virtual {v5}, Lcom/iot/engine/UserAccountActivity;->getResources()Landroid/content/res/Resources;

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

    goto/16 :goto_1

    .line 202
    .end local v2    # "jobj":Lorg/json/JSONObject;
    :cond_3
    iget-object v4, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    iget-object v5, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-virtual {v5}, Lcom/iot/engine/UserAccountActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 145
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 146
    iget-object v0, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    const-string v3, "Switching Account"

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/UserAccountActivity;->access$102(Lcom/iot/engine/UserAccountActivity;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 147
    iget-object v0, p0, Lcom/iot/engine/UserAccountActivity$AsyncLoginTask;->this$0:Lcom/iot/engine/UserAccountActivity;

    invoke-static {v0}, Lcom/iot/engine/UserAccountActivity;->access$100(Lcom/iot/engine/UserAccountActivity;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 148
    return-void
.end method
