.class LAdapter/DeviceListAdapter$AsyncSocketWrite;
.super Landroid/os/AsyncTask;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncSocketWrite"
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
.field mFinalResult:Ljava/lang/String;

.field mIP:Ljava/lang/String;

.field position:I

.field progress:Landroid/app/ProgressDialog;

.field final synthetic this$0:LAdapter/DeviceListAdapter;


# direct methods
.method constructor <init>(LAdapter/DeviceListAdapter;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/DeviceListAdapter;

    .prologue
    .line 96
    iput-object p1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 98
    const-string v0, ""

    iput-object v0, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->mFinalResult:Ljava/lang/String;

    .line 99
    const-string v0, ""

    iput-object v0, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->mIP:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 96
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/DeviceListAdapter$AsyncSocketWrite;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 111
    const/4 v5, 0x0

    .line 112
    .local v5, "pingSocket":Ljava/net/Socket;
    const/4 v3, 0x0

    .line 113
    .local v3, "out":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 114
    .local v1, "in":Ljava/io/BufferedReader;
    const/4 v2, 0x0

    .line 117
    .local v2, "inFromServer":Ljava/io/BufferedReader;
    const/4 v7, 0x0

    :try_start_0
    aget-object v7, p1, v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->position:I

    .line 118
    iget-object v7, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v7, v7, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    iget v8, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->position:I

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "IP"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iput-object v7, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->mIP:Ljava/lang/String;

    .line 119
    new-instance v6, Ljava/net/Socket;

    iget-object v7, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->mIP:Ljava/lang/String;

    const/16 v8, 0x17

    invoke-direct {v6, v7, v8}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    .end local v5    # "pingSocket":Ljava/net/Socket;
    .local v6, "pingSocket":Ljava/net/Socket;
    :try_start_1
    new-instance v4, Ljava/io/PrintWriter;

    invoke-virtual {v6}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v7

    const/4 v8, 0x1

    invoke-direct {v4, v7, v8}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 123
    .end local v3    # "out":Ljava/io/PrintWriter;
    .local v4, "out":Ljava/io/PrintWriter;
    :try_start_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ":s"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v8, v8, LAdapter/DeviceListAdapter;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getSSID()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v8, v8, LAdapter/DeviceListAdapter;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8}, LSession/SessionManager;->getSPassword()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ","

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 126
    const-wide/16 v8, 0x7d0

    :try_start_3
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 146
    :goto_0
    :try_start_4
    invoke-virtual {v4}, Ljava/io/PrintWriter;->close()V

    .line 147
    invoke-virtual {v6}, Ljava/net/Socket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 160
    iget-object v7, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->mFinalResult:Ljava/lang/String;

    move-object v3, v4

    .end local v4    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    move-object v5, v6

    .end local v6    # "pingSocket":Ljava/net/Socket;
    .restart local v5    # "pingSocket":Ljava/net/Socket;
    :goto_1
    return-object v7

    .line 149
    :catch_0
    move-exception v0

    .line 150
    .local v0, "e":Ljava/io/IOException;
    :goto_2
    iget-object v7, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v7, v7, LAdapter/DeviceListAdapter;->context:Landroid/content/Context;

    check-cast v7, Landroid/app/Activity;

    new-instance v8, LAdapter/DeviceListAdapter$AsyncSocketWrite$1;

    invoke-direct {v8, p0}, LAdapter/DeviceListAdapter$AsyncSocketWrite$1;-><init>(LAdapter/DeviceListAdapter$AsyncSocketWrite;)V

    invoke-virtual {v7, v8}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 156
    const-string v7, ""

    goto :goto_1

    .line 127
    .end local v0    # "e":Ljava/io/IOException;
    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v5    # "pingSocket":Ljava/net/Socket;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "pingSocket":Ljava/net/Socket;
    :catch_1
    move-exception v7

    goto :goto_0

    .line 149
    .end local v4    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    :catch_2
    move-exception v0

    move-object v5, v6

    .end local v6    # "pingSocket":Ljava/net/Socket;
    .restart local v5    # "pingSocket":Ljava/net/Socket;
    goto :goto_2

    .end local v3    # "out":Ljava/io/PrintWriter;
    .end local v5    # "pingSocket":Ljava/net/Socket;
    .restart local v4    # "out":Ljava/io/PrintWriter;
    .restart local v6    # "pingSocket":Ljava/net/Socket;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "out":Ljava/io/PrintWriter;
    .restart local v3    # "out":Ljava/io/PrintWriter;
    move-object v5, v6

    .end local v6    # "pingSocket":Ljava/net/Socket;
    .restart local v5    # "pingSocket":Ljava/net/Socket;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 96
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LAdapter/DeviceListAdapter$AsyncSocketWrite;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 4
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 165
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 166
    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->progress:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    .line 167
    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 170
    :cond_0
    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v1, v1, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->position:I

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 171
    .local v0, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "FLAG"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v1, v1, LAdapter/DeviceListAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->position:I

    invoke-virtual {v1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 174
    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    invoke-virtual {v1}, LAdapter/DeviceListAdapter;->notifyDataSetChanged()V

    .line 175
    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v1, v1, LAdapter/DeviceListAdapter;->context:Landroid/content/Context;

    const-string v2, "sync data."

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 176
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 104
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->this$0:LAdapter/DeviceListAdapter;

    iget-object v1, v1, LAdapter/DeviceListAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->progress:Landroid/app/ProgressDialog;

    .line 105
    iget-object v0, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->progress:Landroid/app/ProgressDialog;

    const-string v1, "Kindly wait "

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 106
    iget-object v0, p0, LAdapter/DeviceListAdapter$AsyncSocketWrite;->progress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 107
    return-void
.end method
