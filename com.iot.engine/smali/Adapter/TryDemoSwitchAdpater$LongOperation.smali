.class LAdapter/TryDemoSwitchAdpater$LongOperation;
.super Landroid/os/AsyncTask;
.source "TryDemoSwitchAdpater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/TryDemoSwitchAdpater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LongOperation"
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
.field final synthetic this$0:LAdapter/TryDemoSwitchAdpater;


# direct methods
.method private constructor <init>(LAdapter/TryDemoSwitchAdpater;)V
    .locals 0

    .prologue
    .line 294
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 294
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/TryDemoSwitchAdpater$LongOperation;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 320
    const/4 v2, 0x0

    :try_start_0
    aget-object v1, p1, v2

    .line 321
    .local v1, "strConnection":Ljava/lang/String;
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-static {v2, v1}, LAdapter/TryDemoSwitchAdpater;->access$300(LAdapter/TryDemoSwitchAdpater;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    .end local v1    # "strConnection":Ljava/lang/String;
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 323
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 327
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v2, v2, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    new-instance v3, LAdapter/TryDemoSwitchAdpater$LongOperation$1;

    invoke-direct {v3, p0, v0}, LAdapter/TryDemoSwitchAdpater$LongOperation$1;-><init>(LAdapter/TryDemoSwitchAdpater$LongOperation;Ljava/lang/Exception;)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 294
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/TryDemoSwitchAdpater$LongOperation;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 2
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 307
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 308
    const-string v0, "TryDemoSwitchAdapter "

    const-string v1, "onPostExecute()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    invoke-virtual {v0}, LAdapter/TryDemoSwitchAdpater;->notifyDataSetChanged()V

    .line 310
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    instance-of v0, v0, Lcom/iot/engine/LivingRoom;

    if-eqz v0, :cond_0

    .line 312
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$LongOperation;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v0, v0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    check-cast v0, Lcom/iot/engine/LivingRoom;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 315
    :cond_0
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 298
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 300
    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :goto_0
    return-void

    .line 301
    :catch_0
    move-exception v0

    goto :goto_0
.end method
