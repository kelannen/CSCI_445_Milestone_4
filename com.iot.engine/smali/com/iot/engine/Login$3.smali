.class Lcom/iot/engine/Login$3;
.super Ljava/lang/Object;
.source "Login.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/Login;->login()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/iot/engine/Login;


# direct methods
.method constructor <init>(Lcom/iot/engine/Login;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Login;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 251
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Login$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 14
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$300(Lcom/iot/engine/Login;)V

    .line 256
    if-eqz p1, :cond_3

    .line 258
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 259
    .local v13, "status":Ljava/lang/String;
    const-string v0, "result"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 260
    .local v11, "result":Ljava/lang/String;
    new-instance v12, Lorg/json/JSONObject;

    invoke-direct {v12, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 262
    .local v12, "resultObject":Lorg/json/JSONObject;
    const-string v0, "SUCCESS"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 264
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "id"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$402(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 265
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "lastName"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$502(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 266
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "firstName"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$602(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "token"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$702(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "phoneNumber"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$802(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 269
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "email"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$902(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 270
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "birthDate"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$1002(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 272
    const-string v0, "userType"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "userType"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/iot/engine/Login;->access$1102(Lcom/iot/engine/Login;Ljava/lang/String;)Ljava/lang/String;

    .line 275
    :cond_0
    const-string v0, "image"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    const-string v1, "image"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LSession/SessionManager;->setUserImage(Ljava/lang/String;)V

    .line 279
    :cond_1
    const-string v0, "homeId"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 280
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    const-string v1, "homeId"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LSession/SessionManager;->setHomeId(Ljava/lang/String;)V

    .line 283
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$1200(Lcom/iot/engine/Login;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/iot/engine/Login;->mPassword:Ljava/lang/String;

    .line 284
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1200(Lcom/iot/engine/Login;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const-string v0, "isFirstTimeLogin"

    invoke-virtual {v12, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 287
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1300(Lcom/iot/engine/Login;)V

    .line 319
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "resultObject":Lorg/json/JSONObject;
    .end local v13    # "status":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void

    .line 291
    .restart local v11    # "result":Ljava/lang/String;
    .restart local v12    # "resultObject":Lorg/json/JSONObject;
    .restart local v13    # "status":Ljava/lang/String;
    :cond_4
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$400(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v2}, Lcom/iot/engine/Login;->access$600(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v3}, Lcom/iot/engine/Login;->access$500(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v4}, Lcom/iot/engine/Login;->access$900(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v5}, Lcom/iot/engine/Login;->access$800(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v6}, Lcom/iot/engine/Login;->access$1100(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v7}, Lcom/iot/engine/Login;->access$1000(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, LSession/SessionManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 292
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$700(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, LSession/SessionManager;->saveSecurityToken(Ljava/lang/String;)V

    .line 293
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v0, v0, Lcom/iot/engine/Login;->sessionManager:LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v1, v1, Lcom/iot/engine/Login;->mPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, LSession/SessionManager;->savePassword(Ljava/lang/String;)V

    .line 295
    new-instance v8, LDatabase/DatabaseHandler;

    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-direct {v8, v0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 296
    .local v8, "db":LDatabase/DatabaseHandler;
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 297
    .local v10, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v0, "user_id"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$400(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    const-string v0, "user_name"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v2}, Lcom/iot/engine/Login;->access$600(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v2}, Lcom/iot/engine/Login;->access$500(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    const-string v0, "email"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$900(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const-string v0, "user_type"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$1100(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    const-string v0, "mobile_no"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$800(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    const-string v0, "image_url"

    const-string v1, "image"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    const-string v0, "token"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$700(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    const-string v0, "home_id"

    const-string v1, "homeId"

    invoke-virtual {v12, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    const-string v0, "isActive"

    const-string v1, "1"

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    const-string v0, "birth_date"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v1}, Lcom/iot/engine/Login;->access$1000(Lcom/iot/engine/Login;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    const-string v0, "password"

    iget-object v1, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    iget-object v1, v1, Lcom/iot/engine/Login;->mPassword:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    invoke-virtual {v8, v10}, LDatabase/DatabaseHandler;->insertUserAccount(Ljava/util/HashMap;)Ljava/lang/String;

    .line 310
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    const-string v1, "Welcome to the world of SmartHome"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 311
    iget-object v0, p0, Lcom/iot/engine/Login$3;->this$0:Lcom/iot/engine/Login;

    invoke-static {v0}, Lcom/iot/engine/Login;->access$1400(Lcom/iot/engine/Login;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 314
    .end local v8    # "db":LDatabase/DatabaseHandler;
    .end local v10    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v11    # "result":Ljava/lang/String;
    .end local v12    # "resultObject":Lorg/json/JSONObject;
    .end local v13    # "status":Ljava/lang/String;
    :catch_0
    move-exception v9

    .line 315
    .local v9, "e":Lorg/json/JSONException;
    invoke-virtual {v9}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_0
.end method
