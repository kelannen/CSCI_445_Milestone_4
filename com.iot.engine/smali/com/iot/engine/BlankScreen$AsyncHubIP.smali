.class public Lcom/iot/engine/BlankScreen$AsyncHubIP;
.super Landroid/os/AsyncTask;
.source "BlankScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/BlankScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncHubIP"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field processsDailog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/iot/engine/BlankScreen;


# direct methods
.method public constructor <init>(Lcom/iot/engine/BlankScreen;)V
    .locals 2
    .param p1, "this$0"    # Lcom/iot/engine/BlankScreen;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 57
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 56
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/BlankScreen$AsyncHubIP;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 18
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "br":Ljava/io/BufferedReader;
    const/4 v6, 0x1

    .line 73
    .local v6, "isFirstLine":Z
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v15, Ljava/io/FileReader;

    const-string v16, "/proc/net/arp"

    invoke-direct/range {v15 .. v16}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v15}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    .end local v1    # "br":Ljava/io/BufferedReader;
    .local v2, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_2

    .line 77
    if-eqz v6, :cond_1

    .line 78
    const/4 v6, 0x0

    .line 79
    goto :goto_0

    .line 82
    :cond_1
    const-string v15, " +"

    invoke-virtual {v9, v15}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 84
    .local v13, "splitted":[Ljava/lang/String;
    if-eqz v13, :cond_0

    array-length v15, v13

    const/16 v16, 0x4

    move/from16 v0, v16

    if-lt v15, v0, :cond_0

    .line 86
    const/4 v15, 0x0

    aget-object v5, v13, v15

    .line 87
    .local v5, "ipAddress":Ljava/lang/String;
    const/4 v15, 0x3

    aget-object v10, v13, v15

    .line 89
    .local v10, "macAddress":Ljava/lang/String;
    const/4 v15, 0x0

    aget-object v15, v13, v15

    invoke-static {v15}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v15

    const/16 v16, 0x1f4

    .line 90
    invoke-virtual/range {v15 .. v16}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v7

    .line 91
    .local v7, "isReachable":Z
    if-eqz v7, :cond_0

    .line 92
    const-string v15, "Device Information"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, " : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v15 .. v16}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 98
    .local v3, "constant":LSession/Constants;
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "http://www.macvendorlookup.com/api/v2/"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v3, v15}, LSession/Constants;->doGetRequest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 101
    .local v11, "response":Ljava/lang/String;
    if-eqz v11, :cond_0

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 103
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v11}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 104
    .local v8, "jArr":Lorg/json/JSONArray;
    const/4 v15, 0x0

    invoke-virtual {v8, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v15

    const-string v16, "company"

    invoke-virtual/range {v15 .. v16}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 106
    .local v14, "strCompanyName":Ljava/lang/String;
    new-instance v12, LSession/SessionManager;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {v12, v15}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 107
    .local v12, "session":LSession/SessionManager;
    if-eqz v14, :cond_0

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v15

    if-nez v15, :cond_0

    .line 108
    const-string v15, "Raspberry Pi Foundation"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_0

    .line 109
    invoke-virtual {v12, v5}, LSession/SessionManager;->setAppUrl(Ljava/lang/String;)V

    .line 110
    const/4 v15, 0x1

    invoke-virtual {v12, v15}, LSession/SessionManager;->setAppUrlFlag(Z)V

    .line 111
    const-string v15, "Master Info : "

    invoke-static {v15, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 129
    .end local v3    # "constant":LSession/Constants;
    .end local v5    # "ipAddress":Ljava/lang/String;
    .end local v7    # "isReachable":Z
    .end local v8    # "jArr":Lorg/json/JSONArray;
    .end local v10    # "macAddress":Ljava/lang/String;
    .end local v11    # "response":Ljava/lang/String;
    .end local v12    # "session":LSession/SessionManager;
    .end local v13    # "splitted":[Ljava/lang/String;
    .end local v14    # "strCompanyName":Ljava/lang/String;
    :cond_2
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v1, v2

    .line 135
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v9    # "line":Ljava/lang/String;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :goto_1
    const/4 v15, 0x0

    return-object v15

    .line 130
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    .restart local v9    # "line":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 131
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    move-object v1, v2

    .line 134
    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_1

    .line 125
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "line":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 126
    .local v4, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 129
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 130
    :catch_2
    move-exception v4

    .line 131
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 128
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v15

    .line 129
    :goto_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 132
    :goto_4
    throw v15

    .line 130
    :catch_3
    move-exception v4

    .line 131
    .restart local v4    # "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 128
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v15

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 125
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "br":Ljava/io/BufferedReader;
    :catch_4
    move-exception v4

    move-object v1, v2

    .end local v2    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 56
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/BlankScreen$AsyncHubIP;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    const/4 v3, 0x0

    .line 140
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 142
    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 143
    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroid/app/ProgressDialog;->cancel()V

    .line 146
    :cond_0
    new-instance v0, LSession/SessionManager;

    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "sessionManager":LSession/SessionManager;
    invoke-virtual {v0}, LSession/SessionManager;->getAPPURL()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 148
    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    const-string v2, "Oops Pongo Master not found."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 149
    iget-object v1, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-static {v1}, Lcom/iot/engine/BlankScreen;->access$000(Lcom/iot/engine/BlankScreen;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 152
    :cond_1
    invoke-virtual {v0}, LSession/SessionManager;->getUserSync()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 153
    new-instance v1, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;

    iget-object v2, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->this$0:Lcom/iot/engine/BlankScreen;

    invoke-direct {v1, v2}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;-><init>(Lcom/iot/engine/BlankScreen;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, Lcom/iot/engine/BlankScreen$AsyncUserDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 156
    :cond_2
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 61
    iget-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    const-string v1, "Searching Pongo Master"

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 63
    iget-object v0, p0, Lcom/iot/engine/BlankScreen$AsyncHubIP;->processsDailog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 64
    return-void
.end method
