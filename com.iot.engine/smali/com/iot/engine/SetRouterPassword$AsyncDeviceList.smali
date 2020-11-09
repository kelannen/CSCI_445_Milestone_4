.class public Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;
.super Landroid/os/AsyncTask;
.source "SetRouterPassword.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/SetRouterPassword;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AsyncDeviceList"
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
.field final synthetic this$0:Lcom/iot/engine/SetRouterPassword;


# direct methods
.method public constructor <init>(Lcom/iot/engine/SetRouterPassword;)V
    .locals 0
    .param p1, "this$0"    # Lcom/iot/engine/SetRouterPassword;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 150
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 13
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "br":Ljava/io/BufferedReader;
    const/4 v4, 0x1

    .line 163
    .local v4, "isFirstLine":Z
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v10, Ljava/io/FileReader;

    const-string v11, "/proc/net/arp"

    invoke-direct {v10, v11}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "line":Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 167
    if-eqz v4, :cond_1

    .line 168
    const/4 v4, 0x0

    .line 169
    goto :goto_0

    .line 172
    :cond_1
    const-string v10, " +"

    invoke-virtual {v6, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 174
    .local v9, "splitted":[Ljava/lang/String;
    if-eqz v9, :cond_0

    array-length v10, v9

    const/4 v11, 0x4

    if-lt v10, v11, :cond_0

    .line 176
    const/4 v10, 0x0

    aget-object v3, v9, v10

    .line 177
    .local v3, "ipAddress":Ljava/lang/String;
    const/4 v10, 0x3

    aget-object v8, v9, v10

    .line 179
    .local v8, "macAddress":Ljava/lang/String;
    const/4 v10, 0x0

    aget-object v10, v9, v10

    invoke-static {v10}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v10

    const/16 v11, 0x1f4

    .line 180
    invoke-virtual {v10, v11}, Ljava/net/InetAddress;->isReachable(I)Z

    move-result v5

    .line 181
    .local v5, "isReachable":Z
    if-eqz v5, :cond_0

    .line 183
    const-string v10, "Device Information"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v7, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v10, "IP"

    invoke-virtual {v7, v10, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    const-string v10, "MAC"

    invoke-virtual {v7, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    const-string v10, "FLAG"

    const-string v11, "1"

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v10, p0, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-static {v10}, Lcom/iot/engine/SetRouterPassword;->access$100(Lcom/iot/engine/SetRouterPassword;)Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 195
    .end local v3    # "ipAddress":Ljava/lang/String;
    .end local v5    # "isReachable":Z
    .end local v6    # "line":Ljava/lang/String;
    .end local v7    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "macAddress":Ljava/lang/String;
    .end local v9    # "splitted":[Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v0, v1

    .line 196
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .local v2, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 199
    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 205
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_2
    const/4 v10, 0x0

    return-object v10

    .line 199
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "line":Ljava/lang/String;
    :cond_2
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    move-object v0, v1

    .line 202
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 200
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_1
    move-exception v2

    .line 201
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    .line 204
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 200
    .end local v6    # "line":Ljava/lang/String;
    .local v2, "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 201
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 198
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v10

    .line 199
    :goto_3
    :try_start_5
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 202
    :goto_4
    throw v10

    .line 200
    :catch_3
    move-exception v2

    .line 201
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 198
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v10

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 195
    :catch_4
    move-exception v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 150
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 210
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 211
    iget-object v0, p0, Lcom/iot/engine/SetRouterPassword$AsyncDeviceList;->this$0:Lcom/iot/engine/SetRouterPassword;

    invoke-virtual {v0}, Lcom/iot/engine/SetRouterPassword;->setAdapter()V

    .line 212
    return-void
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 153
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 154
    return-void
.end method
