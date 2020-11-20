.class LFragments/Rooms$AsyncRoomListTask;
.super Landroid/os/AsyncTask;
.source "Rooms.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/Rooms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AsyncRoomListTask"
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
.field final synthetic this$0:LFragments/Rooms;


# direct methods
.method constructor <init>(LFragments/Rooms;)V
    .locals 0
    .param p1, "this$0"    # LFragments/Rooms;

    .prologue
    .line 341
    iput-object p1, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 341
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, LFragments/Rooms$AsyncRoomListTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 9
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 344
    const/4 v1, 0x0

    .line 346
    .local v1, "mResponse":Ljava/lang/String;
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 347
    .local v0, "jMain":Lorg/json/JSONObject;
    const-string v4, "userId"

    iget-object v5, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v5}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v5

    invoke-virtual {v5}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 348
    const-string v4, "messageFrom"

    iget-object v5, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v5}, LFragments/Rooms;->access$100(LFragments/Rooms;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v4, "Get room request "

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/room/getlistbyuser"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 351
    .local v3, "url":Ljava/lang/String;
    const-string v4, "Room Url"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v4, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v4}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v4

    invoke-virtual {v4}, LSession/SessionManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v2

    .line 353
    .local v2, "strDeviceToken":Ljava/lang/String;
    const-string v4, "Rooms"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Token: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, LSession/Constants;->URL_GO:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/room/getlistbyuser"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v7}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v7

    invoke-virtual {v7}, LSession/SessionManager;->getSecurityToken()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v8}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v8

    invoke-virtual {v8}, LSession/SessionManager;->getDeviceToken()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v5, v6, v7, v8}, LSession/Constants;->doPostRoomRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 356
    .end local v0    # "jMain":Lorg/json/JSONObject;
    .end local v2    # "strDeviceToken":Ljava/lang/String;
    .end local v3    # "url":Ljava/lang/String;
    :goto_0
    return-object v1

    .line 355
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 341
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, LFragments/Rooms$AsyncRoomListTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 12
    .param p1, "result"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 361
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 363
    if-eqz p1, :cond_3

    .line 364
    const-string v8, "Get room response : "

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 367
    .local v2, "response":Lorg/json/JSONObject;
    iget-object v8, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-virtual {v8}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-static {v8}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v8

    new-instance v9, Landroid/content/Intent;

    const-string v10, "INTERNET_TEST"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v10, "INTERNET_TEST"

    const-string v11, "1"

    invoke-virtual {v9, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 368
    const-string v8, "status"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 369
    .local v5, "status":Ljava/lang/String;
    const-string v8, "result"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 370
    .local v4, "results":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v4}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 372
    .local v3, "resultArray":Lorg/json/JSONArray;
    const-string v8, "SUCCESS"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 373
    const-string v8, "isArmed"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "1"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    move v1, v6

    .line 374
    .local v1, "mArmFlag":Z
    :goto_0
    iget-object v8, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v8}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v8

    const-string v9, "isArmed"

    invoke-virtual {v2, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    :goto_1
    invoke-virtual {v8, v6}, LSession/SessionManager;->setArmFlag(Z)V

    .line 376
    const-string v6, "isTowerExist"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 377
    const-string v6, "isTowerExist"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "true"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 378
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, LSession/SessionManager;->setTowerFlag(Z)Ljava/lang/Boolean;

    .line 384
    :cond_0
    :goto_2
    const-string v6, "lockCode"

    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 385
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v6

    const-string v7, "lockCode"

    invoke-virtual {v2, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, LSession/SessionManager;->saveLockCode(Ljava/lang/String;)V

    .line 388
    :cond_1
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v6

    invoke-virtual {v6}, LSession/SessionManager;->getArmFlag()Z

    move-result v6

    if-eq v6, v1, :cond_2

    .line 389
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-virtual {v6}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    const-string v8, "NotificationSend"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 392
    :cond_2
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6, v3}, LFragments/Rooms;->access$200(LFragments/Rooms;Lorg/json/JSONArray;)V

    .line 393
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6}, LFragments/Rooms;->access$300(LFragments/Rooms;)LDatabase/DatabaseHandler;

    move-result-object v6

    invoke-virtual {v6}, LDatabase/DatabaseHandler;->getAllSwitches()Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-gtz v6, :cond_3

    .line 394
    const-string v6, "Rooms"

    const-string v7, "onPostExecute: "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-virtual {v6}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    new-instance v7, Landroid/content/Intent;

    iget-object v8, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-virtual {v8}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    const-class v9, Lcom/iot/engine/GetSwitchByRoomService;

    invoke-direct {v7, v8, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 407
    .end local v1    # "mArmFlag":Z
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "resultArray":Lorg/json/JSONArray;
    .end local v4    # "results":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :cond_3
    :goto_3
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6}, LFragments/Rooms;->access$400(LFragments/Rooms;)V

    .line 409
    return-void

    .restart local v2    # "response":Lorg/json/JSONObject;
    .restart local v3    # "resultArray":Lorg/json/JSONArray;
    .restart local v4    # "results":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_4
    move v1, v7

    .line 373
    goto/16 :goto_0

    .restart local v1    # "mArmFlag":Z
    :cond_5
    move v6, v7

    .line 374
    goto/16 :goto_1

    .line 380
    :cond_6
    :try_start_1
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    invoke-static {v6}, LFragments/Rooms;->access$000(LFragments/Rooms;)LSession/SessionManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, LSession/SessionManager;->setTowerFlag(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 401
    .end local v1    # "mArmFlag":Z
    .end local v2    # "response":Lorg/json/JSONObject;
    .end local v3    # "resultArray":Lorg/json/JSONArray;
    .end local v4    # "results":Ljava/lang/String;
    .end local v5    # "status":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 402
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 399
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "response":Lorg/json/JSONObject;
    .restart local v3    # "resultArray":Lorg/json/JSONArray;
    .restart local v4    # "results":Ljava/lang/String;
    .restart local v5    # "status":Ljava/lang/String;
    :cond_7
    :try_start_2
    iget-object v6, p0, LFragments/Rooms$AsyncRoomListTask;->this$0:LFragments/Rooms;

    iget-object v6, v6, LFragments/Rooms;->context:Landroid/content/Context;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "msg"

    invoke-virtual {v2, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3
.end method
