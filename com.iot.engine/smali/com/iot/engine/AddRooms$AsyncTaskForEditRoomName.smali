.class Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;
.super Landroid/os/AsyncTask;
.source "AddRooms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iot/engine/AddRooms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncTaskForEditRoomName"
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
.field final synthetic this$0:Lcom/iot/engine/AddRooms;


# direct methods
.method private constructor <init>(Lcom/iot/engine/AddRooms;)V
    .locals 0

    .prologue
    .line 300
    iput-object p1, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/iot/engine/AddRooms;Lcom/iot/engine/AddRooms$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/iot/engine/AddRooms;
    .param p2, "x1"    # Lcom/iot/engine/AddRooms$1;

    .prologue
    .line 300
    invoke-direct {p0, p1}, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;-><init>(Lcom/iot/engine/AddRooms;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 300
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->doInBackground([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "params"    # [Ljava/lang/String;

    .prologue
    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, "response":Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 311
    .local v1, "jsonParams":Lorg/json/JSONObject;
    const-string v3, "userId"

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$100(Lcom/iot/engine/AddRooms;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 312
    iget-object v3, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v3}, Lcom/iot/engine/AddRooms;->access$200(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 313
    const-string v3, "roomId"

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$200(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 315
    :cond_0
    const-string v3, "roomName"

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$300(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 316
    const-string v3, "roomType"

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$400(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 317
    const-string v3, "roomImageId"

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$500(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 318
    const-string v4, "messageFrom"

    sget-object v3, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v5, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "Internet"

    :goto_0
    invoke-virtual {v1, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 320
    const-string v3, "AddRooms"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/room/add"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v6}, Lcom/iot/engine/AddRooms;->access$100(Lcom/iot/engine/AddRooms;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v4, v5, v6}, LSession/Constants;->doPostRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 324
    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    :goto_1
    return-object v2

    .line 318
    .restart local v1    # "jsonParams":Lorg/json/JSONObject;
    :cond_1
    const-string v3, "Localhub"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    .end local v1    # "jsonParams":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 300
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    .line 329
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 330
    if-eqz p1, :cond_1

    .line 331
    const-string v2, "AddRooms"

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

    .line 333
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 334
    .local v1, "jResponse":Lorg/json/JSONObject;
    const-string v2, "status"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "SUCCESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 335
    iget-object v2, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v2}, Lcom/iot/engine/AddRooms;->access$600(Lcom/iot/engine/AddRooms;)LDatabase/DatabaseHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v3}, Lcom/iot/engine/AddRooms;->access$500(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$200(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateRoomImage(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    iget-object v2, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v2}, Lcom/iot/engine/AddRooms;->access$600(Lcom/iot/engine/AddRooms;)LDatabase/DatabaseHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v3}, Lcom/iot/engine/AddRooms;->access$200(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-static {v4}, Lcom/iot/engine/AddRooms;->access$300(Lcom/iot/engine/AddRooms;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, LDatabase/DatabaseHandler;->updateSwitchRoomNameByRoomId(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    iget-object v2, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    const-string v3, "Room name updated successfully"

    invoke-static {v2, v3}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    invoke-virtual {v2}, Lcom/iot/engine/AddRooms;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .end local v1    # "jResponse":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    return-void

    .line 341
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 343
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    iget-object v2, p0, Lcom/iot/engine/AddRooms$AsyncTaskForEditRoomName;->this$0:Lcom/iot/engine/AddRooms;

    const-string v3, "Kindly try again."

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 0

    .prologue
    .line 303
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 304
    return-void
.end method
