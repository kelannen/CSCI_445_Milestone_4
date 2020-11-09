.class Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;
.super Landroid/os/AsyncTask;
.source "GetSwitchByRoomService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/GetSwitchByRoomService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncGetSwitchByRoomTask"
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
.field final synthetic this$0:Lcom/iot/engine/GetSwitchByRoomService;


# direct methods
.method private constructor <init>(Lcom/iot/engine/GetSwitchByRoomService;)V
    .locals 0

    .prologue
    .line 65
    iput-object p1, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/GetSwitchByRoomService;Lcom/iot/engine/GetSwitchByRoomService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/GetSwitchByRoomService;
    .param p2, "x1"    # Lcom/iot/engine/GetSwitchByRoomService$1;

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;-><init>(Lcom/iot/engine/GetSwitchByRoomService;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 65
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 11
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 68
    new-instance v3, LSession/Constants;

    invoke-direct {v3}, LSession/Constants;-><init>()V

    .line 69
    .local v3, "request":LSession/Constants;
    iget-object v7, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    new-instance v8, LDatabase/DatabaseHandler;

    iget-object v9, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-virtual {v9}, Lcom/iot/engine/GetSwitchByRoomService;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v8, v7, Lcom/iot/engine/GetSwitchByRoomService;->db:LDatabase/DatabaseHandler;

    .line 70
    new-instance v6, LSession/SessionManager;

    iget-object v7, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-virtual {v7}, Lcom/iot/engine/GetSwitchByRoomService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 71
    .local v6, "session":LSession/SessionManager;
    iget-object v7, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    iget-object v7, v7, Lcom/iot/engine/GetSwitchByRoomService;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v7}, LDatabase/DatabaseHandler;->getRooms()Ljava/util/ArrayList;

    move-result-object v5

    .line 73
    .local v5, "roomList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v1, v7, :cond_1

    .line 75
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 76
    .local v2, "jObj":Lorg/json/JSONObject;
    const-string v8, "roomId"

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "RoomId"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v2, v8, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/switch/getswitchbyroom"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v7, v8, v9}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "response":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 79
    iget-object v9, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v8, "RoomId"

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/HashMap;

    const-string v10, "RoomName"

    invoke-virtual {v8, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-static {v9, v4, v7, v8}, Lcom/iot/engine/GetSwitchByRoomService;->access$100(Lcom/iot/engine/GetSwitchByRoomService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .end local v2    # "jObj":Lorg/json/JSONObject;
    .end local v4    # "response":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/lang/Exception;
    iget-object v7, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-virtual {v7}, Lcom/iot/engine/GetSwitchByRoomService;->stopSelf()V

    goto :goto_1

    .line 86
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v7, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-virtual {v7}, Lcom/iot/engine/GetSwitchByRoomService;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v7

    new-instance v8, Landroid/content/Intent;

    const-string v9, "NotificationSend"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 88
    const/4 v7, 0x0

    return-object v7
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 65
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 94
    iget-object v0, p0, Lcom/iot/engine/GetSwitchByRoomService$AsyncGetSwitchByRoomTask;->this$0:Lcom/iot/engine/GetSwitchByRoomService;

    invoke-virtual {v0}, Lcom/iot/engine/GetSwitchByRoomService;->stopSelf()V

    .line 95
    return-void
.end method
