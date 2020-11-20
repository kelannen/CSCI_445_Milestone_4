.class Lcom/iot/engine/BlankScreen$AsyncUserDataTask;
.super Landroid/os/AsyncTask;
.source "BlankScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/BlankScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncUserDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field sessionManager:LSession/SessionManager;

.field final synthetic this$0:Lcom/iot/engine/BlankScreen;


# direct methods
.method constructor <init>(Lcom/iot/engine/BlankScreen;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iot/engine/BlankScreen;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 161
    new-instance v0, LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 172
    const/4 v3, 0x0

    .line 173
    .local v3, "mResponse":Ljava/lang/String;
    new-instance v4, LSession/Constants;

    invoke-direct {v4}, LSession/Constants;-><init>()V

    .line 175
    .local v4, "req":LSession/Constants;
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 176
    .local v2, "jBody":Lorg/json/JSONObject;
    const-string v6, "id"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 177
    const-string v6, "firstName"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getFirstName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 178
    const-string v6, "lastName"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getLastName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 179
    const-string v6, "email"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getEmail()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    const-string v6, "password"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getPassword()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string v6, "phoneNumber"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getPhone()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 182
    const-string v6, "userType"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 183
    const-string v6, "image"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getUserImage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 184
    const-string v6, "deviceId"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 185
    const-string v6, "deviceType"

    const-string v7, "ANROID"

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 186
    const-string v6, "isEmailVerified"

    const/4 v7, 0x1

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 187
    const-string v6, "isFirstLogin"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 188
    const-string v6, "birthDate"

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getBirthDate()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    iget-object v6, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getHomeId()Ljava/lang/String;

    move-result-object v0

    .line 190
    .local v0, "homeId":Ljava/lang/String;
    const-string v6, "homeid"

    invoke-virtual {v2, v6, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 192
    const-string v6, "syncShareControlData "

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v6, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getAPPURL()Ljava/lang/String;

    move-result-object v5

    .line 194
    .local v5, "session":Ljava/lang/String;
    const-string v6, "App URL"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "https://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getAPPURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":8080/smart_home_local/user/syncShareControlData"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "input":Ljava/lang/String;
    const-string v6, "Swapnil"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "http://"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getAPPURL()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":8080/smart_home_local/user/syncShareControlData"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v6, v7, v8}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 201
    .end local v0    # "homeId":Ljava/lang/String;
    .end local v1    # "input":Ljava/lang/String;
    .end local v2    # "jBody":Lorg/json/JSONObject;
    .end local v5    # "session":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 199
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 6
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 206
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 207
    const-string v3, "syncUserControl Res "

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-static {v3}, Lcom/iot/engine/BlankScreen;->access$100(Lcom/iot/engine/BlankScreen;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-static {v3}, Lcom/iot/engine/BlankScreen;->access$100(Lcom/iot/engine/BlankScreen;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 209
    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-static {v3}, Lcom/iot/engine/BlankScreen;->access$100(Lcom/iot/engine/BlankScreen;)Ldmax/dialog/SpotsDialog;

    move-result-object v3

    invoke-virtual {v3}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 212
    :cond_0
    if-eqz p1, :cond_1

    .line 213
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 214
    .local v2, "jMain":Lorg/json/JSONObject;
    const-string v3, "status"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "SUCCESS"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 215
    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->sessionManager:LSession/SessionManager;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LSession/SessionManager;->setUserSync(Z)Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v2    # "jMain":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    new-instance v1, Landroid/content/Intent;

    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    const-class v4, Lcom/iot/engine/MainActivity;

    invoke-direct {v1, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 230
    .local v1, "intent":Landroid/content/Intent;
    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-virtual {v3, v1}, Lcom/iot/engine/BlankScreen;->startActivity(Landroid/content/Intent;)V

    .line 231
    iget-object v3, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-virtual {v3}, Lcom/iot/engine/BlankScreen;->finish()V

    .line 232
    return-void

    .line 227
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 164
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 165
    iget-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    const-string v3, " Syncing with Pongo Master "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/BlankScreen;->access$102(Lcom/iot/engine/BlankScreen;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 166
    iget-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-static {v0}, Lcom/iot/engine/BlankScreen;->access$100(Lcom/iot/engine/BlankScreen;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 167
    return-void
.end method
