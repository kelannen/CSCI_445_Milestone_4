.class LAdapter/ShareControlAdapter$AsyncDeleteShareControl;
.super Landroid/os/AsyncTask;
.source "ShareControlAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/ShareControlAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncDeleteShareControl"
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
.field private mPos:I

.field final synthetic this$0:LAdapter/ShareControlAdapter;


# direct methods
.method public constructor <init>(LAdapter/ShareControlAdapter;I)V
    .locals 0
    .param p2, "mPosition"    # I

    .prologue
    .line 221
    iput-object p1, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 222
    iput p2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->mPos:I

    .line 223
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 219
    check-cast p1, [Ljava/util/HashMap;

    invoke-virtual {p0, p1}, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->doInBackground([Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/util/HashMap;)Ljava/lang/String;
    .locals 8
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
    .line 234
    .local p1, "params":[Ljava/util/HashMap;, "[Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    .line 235
    .local v3, "response":Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v2, p1, v4

    .line 237
    .local v2, "mMapData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 238
    .local v1, "jBody":Lorg/json/JSONObject;
    const-string v4, "adminUserId"

    iget-object v5, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    iget-object v5, v5, LAdapter/ShareControlAdapter;->session:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 239
    const-string v4, "userType"

    const-string v5, "realUserType"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    const-string v4, "phoneNumber"

    const-string v5, "phoneNumber"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 241
    const-string v4, "email"

    const-string v5, "email"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 242
    const-string v4, "ShareControlAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "user/deletesharecontroluser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    iget-object v7, v7, LAdapter/ShareControlAdapter;->session:LSession/SessionManager;

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v5, v6, v7}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    move-object v4, v3

    .line 246
    .end local v1    # "jBody":Lorg/json/JSONObject;
    :goto_0
    return-object v4

    .line 245
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 246
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 219
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 251
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 252
    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    invoke-static {v2}, LAdapter/ShareControlAdapter;->access$100(LAdapter/ShareControlAdapter;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    invoke-static {v2}, LAdapter/ShareControlAdapter;->access$100(LAdapter/ShareControlAdapter;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    invoke-static {v2}, LAdapter/ShareControlAdapter;->access$100(LAdapter/ShareControlAdapter;)Ldmax/dialog/SpotsDialog;

    move-result-object v2

    invoke-virtual {v2}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 256
    :cond_0
    if-eqz p1, :cond_2

    .line 257
    const-string v2, "ShareControlAdapter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPostExecute: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 260
    .local v1, "jResult":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 261
    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    iget-object v2, v2, LAdapter/ShareControlAdapter;->arrayList:Ljava/util/ArrayList;

    iget v3, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->mPos:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 262
    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    invoke-virtual {v2}, LAdapter/ShareControlAdapter;->notifyDataSetChanged()V

    .line 263
    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    iget-object v2, v2, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    const-string v3, "User is deleted successfully."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 269
    .end local v1    # "jResult":Lorg/json/JSONObject;
    :cond_1
    :goto_0
    return-void

    .line 265
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    iget-object v2, v2, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    const-string v3, "Kindly try again"

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 227
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 228
    iget-object v0, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    iget-object v2, v2, LAdapter/ShareControlAdapter;->context:Landroid/content/Context;

    const-string v3, "Kindly Wait "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, LAdapter/ShareControlAdapter;->access$102(LAdapter/ShareControlAdapter;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 229
    iget-object v0, p0, LAdapter/ShareControlAdapter$AsyncDeleteShareControl;->this$0:LAdapter/ShareControlAdapter;

    invoke-static {v0}, LAdapter/ShareControlAdapter;->access$100(LAdapter/ShareControlAdapter;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 230
    return-void
.end method
