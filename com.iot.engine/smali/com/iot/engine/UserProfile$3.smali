.class Lcom/iot/engine/UserProfile$3;
.super Ljava/lang/Object;
.source "UserProfile.java"

# interfaces
.implements Lcom/android/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/iot/engine/UserProfile;->updateUserAccount()V
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
.field final synthetic this$0:Lcom/iot/engine/UserProfile;


# direct methods
.method constructor <init>(Lcom/iot/engine/UserProfile;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/UserProfile;

    .prologue
    .line 451
    iput-object p1, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 451
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/iot/engine/UserProfile$3;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 11
    .param p1, "response"    # Lorg/json/JSONObject;

    .prologue
    .line 454
    iget-object v0, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0}, Lcom/iot/engine/UserProfile;->access$700(Lcom/iot/engine/UserProfile;)V

    .line 455
    if-eqz p1, :cond_0

    .line 456
    const-string v9, ""

    .line 458
    .local v9, "msg":Ljava/lang/String;
    :try_start_0
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 459
    .local v10, "status":Ljava/lang/String;
    const-string v0, "msg"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 461
    const-string v0, "SUCCESS"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 463
    iget-object v0, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0}, Lcom/iot/engine/UserProfile;->access$200(Lcom/iot/engine/UserProfile;)LSession/SessionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v1}, Lcom/iot/engine/UserProfile;->access$200(Lcom/iot/engine/UserProfile;)LSession/SessionManager;

    move-result-object v1

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    iget-object v2, v2, Lcom/iot/engine/UserProfile;->mEdtFirstName:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    iget-object v3, v3, Lcom/iot/engine/UserProfile;->mEdtLastName:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    iget-object v4, v4, Lcom/iot/engine/UserProfile;->mEdtEmail:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    iget-object v5, v5, Lcom/iot/engine/UserProfile;->mEdtPhone:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    iget-object v6, v6, Lcom/iot/engine/UserProfile;->edittxt_date:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual/range {v0 .. v7}, LSession/SessionManager;->saveUser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    const-string v1, "Successfully Updated"

    invoke-static {v0, v1}, Lcom/iot/engine/UserProfile;->access$900(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    invoke-virtual {v0}, Lcom/iot/engine/UserProfile;->finish()V

    .line 477
    .end local v9    # "msg":Ljava/lang/String;
    .end local v10    # "status":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 469
    .restart local v9    # "msg":Ljava/lang/String;
    .restart local v10    # "status":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    invoke-static {v0, v9}, Lcom/iot/engine/UserProfile;->access$900(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 471
    .end local v10    # "status":Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 472
    .local v8, "e":Lorg/json/JSONException;
    invoke-virtual {v8}, Lorg/json/JSONException;->printStackTrace()V

    .line 474
    iget-object v0, p0, Lcom/iot/engine/UserProfile$3;->this$0:Lcom/iot/engine/UserProfile;

    const-string v1, "try again"

    invoke-static {v0, v1}, Lcom/iot/engine/UserProfile;->access$900(Lcom/iot/engine/UserProfile;Ljava/lang/String;)V

    goto :goto_0
.end method
