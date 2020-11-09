.class Lcom/iot/engine/Register$AsyncTaskForRegister;
.super Landroid/os/AsyncTask;
.source "Register.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/Register;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncTaskForRegister"
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
.field final synthetic this$0:Lcom/iot/engine/Register;


# direct methods
.method constructor <init>(Lcom/iot/engine/Register;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/Register;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/iot/engine/Register$AsyncTaskForRegister;->this$0:Lcom/iot/engine/Register;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 213
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Register$AsyncTaskForRegister;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 222
    const-string v2, ""

    .line 223
    .local v2, "strResult":Ljava/lang/String;
    new-instance v1, LSession/Constants;

    invoke-direct {v1}, LSession/Constants;-><init>()V

    .line 225
    .local v1, "req":LSession/Constants;
    :try_start_0
    iget-object v3, p0, Lcom/iot/engine/Register$AsyncTaskForRegister;->this$0:Lcom/iot/engine/Register;

    invoke-static {v3}, Lcom/iot/engine/Register;->access$200(Lcom/iot/engine/Register;)Ljava/lang/String;

    move-result-object v0

    .line 226
    .local v0, "mJSONBODY":Ljava/lang/String;
    const-string v3, "Register"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "register "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/user"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v0}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 231
    .end local v0    # "mJSONBODY":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 229
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 213
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/Register$AsyncTaskForRegister;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 236
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 237
    iget-object v0, p0, Lcom/iot/engine/Register$AsyncTaskForRegister;->this$0:Lcom/iot/engine/Register;

    invoke-static {v0}, Lcom/iot/engine/Register;->access$300(Lcom/iot/engine/Register;)V

    .line 238
    iget-object v0, p0, Lcom/iot/engine/Register$AsyncTaskForRegister;->this$0:Lcom/iot/engine/Register;

    invoke-static {v0, p1}, Lcom/iot/engine/Register;->access$400(Lcom/iot/engine/Register;Ljava/lang/String;)V

    .line 239
    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .prologue
    .line 216
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 217
    iget-object v0, p0, Lcom/iot/engine/Register$AsyncTaskForRegister;->this$0:Lcom/iot/engine/Register;

    invoke-static {v0}, Lcom/iot/engine/Register;->access$100(Lcom/iot/engine/Register;)V

    .line 218
    return-void
.end method
