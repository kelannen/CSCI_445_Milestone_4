.class Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;
.super Landroid/os/AsyncTask;
.source "ShareControlUserList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/ShareControlUserList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncGetSharedUserList"
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
.field final synthetic this$0:Lcom/iot/engine/ShareControlUserList;


# direct methods
.method private constructor <init>(Lcom/iot/engine/ShareControlUserList;)V
    .locals 0

    .prologue
    .line 158
    iput-object p1, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/ShareControlUserList;Lcom/iot/engine/ShareControlUserList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/ShareControlUserList;
    .param p2, "x1"    # Lcom/iot/engine/ShareControlUserList$1;

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;-><init>(Lcom/iot/engine/ShareControlUserList;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 166
    new-instance v0, LSession/Constants;

    invoke-direct {v0}, LSession/Constants;-><init>()V

    .line 167
    .local v0, "con":LSession/Constants;
    const/4 v2, 0x0

    .line 170
    .local v2, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 171
    .local v3, "session":LSession/SessionManager;
    iget-object v4, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-static {v4}, Lcom/iot/engine/ShareControlUserList;->access$200(Lcom/iot/engine/ShareControlUserList;)Ljava/lang/String;

    move-result-object v1

    .line 172
    .local v1, "mRequest":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/user/list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v1, v5}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 175
    .end local v1    # "mRequest":Ljava/lang/String;
    .end local v3    # "session":LSession/SessionManager;
    :goto_0
    return-object v2

    .line 174
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 158
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 3
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 182
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-static {v0}, Lcom/iot/engine/ShareControlUserList;->access$100(Lcom/iot/engine/ShareControlUserList;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-static {v0}, Lcom/iot/engine/ShareControlUserList;->access$100(Lcom/iot/engine/ShareControlUserList;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-static {v0}, Lcom/iot/engine/ShareControlUserList;->access$100(Lcom/iot/engine/ShareControlUserList;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->dismiss()V

    .line 185
    :cond_0
    if-eqz p1, :cond_1

    .line 186
    const-string v0, "ShareControl List--> "

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-static {v0, p1}, Lcom/iot/engine/ShareControlUserList;->access$300(Lcom/iot/engine/ShareControlUserList;Ljava/lang/String;)V

    .line 192
    :goto_0
    return-void

    .line 190
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    iget-object v1, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-virtual {v1}, Lcom/iot/engine/ShareControlUserList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060082

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 4

    .prologue
    .line 160
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 161
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    new-instance v1, Ldmax/dialog/SpotsDialog;

    iget-object v2, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    const-string v3, " User list "

    invoke-direct {v1, v2, v3}, Ldmax/dialog/SpotsDialog;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    invoke-static {v0, v1}, Lcom/iot/engine/ShareControlUserList;->access$102(Lcom/iot/engine/ShareControlUserList;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;

    .line 162
    iget-object v0, p0, Lcom/iot/engine/ShareControlUserList$AsyncGetSharedUserList;->this$0:Lcom/iot/engine/ShareControlUserList;

    invoke-static {v0}, Lcom/iot/engine/ShareControlUserList;->access$100(Lcom/iot/engine/ShareControlUserList;)Ldmax/dialog/SpotsDialog;

    move-result-object v0

    invoke-virtual {v0}, Ldmax/dialog/SpotsDialog;->show()V

    .line 163
    return-void
.end method
