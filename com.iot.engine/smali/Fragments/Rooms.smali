.class public LFragments/Rooms;
.super Landroid/support/v4/app/Fragment;
.source "Rooms.java"

# interfaces
.implements LSession/OnCustomerListChangedListener;
.implements LSession/OnStartDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LFragments/Rooms$AsyncTaskForHideRoom;,
        LFragments/Rooms$TurnOffAllSwitchAsyncTask;,
        LFragments/Rooms$AsyncRoomListTask;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "Rooms"

.field private static isFirstTimeCall:Z

.field public static roomDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field adapter:LAdapter/AdapterCustomRooms;

.field context:Landroid/content/Context;

.field private db:LDatabase/DatabaseHandler;

.field linearLayout:Landroid/widget/LinearLayout;

.field lstRoom:Landroid/support/v7/widget/RecyclerView;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private message:Landroid/content/BroadcastReceiver;

.field private messageType:Ljava/lang/String;

.field private methodType:I

.field private pDialog:Landroid/app/ProgressDialog;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private strWebserviceName:Ljava/lang/String;

.field private swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

.field tempMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private tvMessageInt:Landroid/widget/TextView;

.field private txtCount:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    sput-boolean v0, LFragments/Rooms;->isFirstTimeCall:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 83
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 92
    const-string v0, ""

    iput-object v0, p0, LFragments/Rooms;->strWebserviceName:Ljava/lang/String;

    .line 494
    new-instance v0, LFragments/Rooms$1;

    invoke-direct {v0, p0}, LFragments/Rooms$1;-><init>(LFragments/Rooms;)V

    iput-object v0, p0, LFragments/Rooms;->message:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(LFragments/Rooms;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # LFragments/Rooms;

    .prologue
    .line 83
    iget-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$100(LFragments/Rooms;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Rooms;

    .prologue
    .line 83
    iget-object v0, p0, LFragments/Rooms;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(LFragments/Rooms;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # LFragments/Rooms;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 83
    invoke-direct {p0, p1}, LFragments/Rooms;->createListForRoom(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(LFragments/Rooms;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # LFragments/Rooms;

    .prologue
    .line 83
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method static synthetic access$400(LFragments/Rooms;)V
    .locals 0
    .param p0, "x0"    # LFragments/Rooms;

    .prologue
    .line 83
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    return-void
.end method

.method static synthetic access$700(LFragments/Rooms;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # LFragments/Rooms;

    .prologue
    .line 83
    iget-object v0, p0, LFragments/Rooms;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$702(LFragments/Rooms;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # LFragments/Rooms;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 83
    iput-object p1, p0, LFragments/Rooms;->pDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$800(LFragments/Rooms;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LFragments/Rooms;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 83
    invoke-direct {p0, p1, p2}, LFragments/Rooms;->createJSONBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(LFragments/Rooms;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # LFragments/Rooms;

    .prologue
    .line 83
    iget-object v0, p0, LFragments/Rooms;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$902(LFragments/Rooms;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # LFragments/Rooms;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 83
    iput-object p1, p0, LFragments/Rooms;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method private addRoomDialog1(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "operation"    # Ljava/lang/String;
    .param p2, "index"    # Ljava/lang/String;

    .prologue
    .line 705
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/AddRooms;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 706
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "Operation"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 708
    const-string v1, "Edit"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 709
    const-string v2, "RoomId"

    sget-object v1, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 712
    const-string v2, "RoomTypeId"

    sget-object v1, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomTypeId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 713
    const-string v2, "RoomName"

    sget-object v1, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    const-string v2, "RoomImageType"

    sget-object v1, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomImageType"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 717
    :cond_0
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 719
    return-void
.end method

.method private alertHideSwitch()V
    .locals 8

    .prologue
    .line 595
    iget-object v5, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "2"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v5}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v5

    const-string v6, "3"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 596
    :cond_0
    iget-object v5, p0, LFragments/Rooms;->context:Landroid/content/Context;

    invoke-virtual {p0}, LFragments/Rooms;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060083

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 628
    :goto_0
    return-void

    .line 600
    :cond_1
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 601
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 602
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 603
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    const v6, 0x7f0800ed

    iput v6, v5, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 604
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 605
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 606
    .local v2, "tvTitle":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 607
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 609
    .local v4, "txtOK":Landroid/widget/TextView;
    const-string v5, "Hide Room"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 610
    const-string v5, "In order to hide,we need to TURN OFF selected appliance ?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 612
    new-instance v5, LFragments/Rooms$2;

    invoke-direct {v5, p0, v0}, LFragments/Rooms$2;-><init>(LFragments/Rooms;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 620
    new-instance v5, LFragments/Rooms$3;

    invoke-direct {v5, p0, v0}, LFragments/Rooms$3;-><init>(LFragments/Rooms;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 626
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_0
.end method

.method private createAlertPassdDialog()V
    .locals 5

    .prologue
    .line 639
    new-instance v0, Landroid/app/Dialog;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v0, v4}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 641
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 642
    const v4, 0x7f040028

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->setContentView(I)V

    .line 643
    const v4, 0x7f0d00a5

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 644
    .local v3, "txtOk":Landroid/widget/TextView;
    const v4, 0x7f0d00d7

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 645
    .local v2, "txtCancel":Landroid/widget/TextView;
    const v4, 0x7f0d00d6

    invoke-virtual {v0, v4}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 647
    .local v1, "edtPassword":Landroid/widget/EditText;
    new-instance v4, LFragments/Rooms$4;

    invoke-direct {v4, p0, v1, v0}, LFragments/Rooms$4;-><init>(LFragments/Rooms;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 669
    new-instance v4, LFragments/Rooms$5;

    invoke-direct {v4, p0, v0}, LFragments/Rooms$5;-><init>(LFragments/Rooms;Landroid/app/Dialog;)V

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 677
    return-void
.end method

.method private createJSONBody(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "switchStatus"    # Ljava/lang/String;
    .param p2, "mRoomId"    # Ljava/lang/String;

    .prologue
    .line 790
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 792
    .local v1, "jMain":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "roomId"

    invoke-virtual {v1, v2, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 793
    const-string v2, "onoffstatus"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 794
    const-string v2, "userId"

    iget-object v3, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 795
    const-string v2, "messageFrom"

    iget-object v3, p0, LFragments/Rooms;->messageType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 797
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 796
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createListForRoom(Lorg/json/JSONArray;)V
    .locals 11
    .param p1, "resultArray"    # Lorg/json/JSONArray;

    .prologue
    .line 413
    sget-object v8, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 414
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 416
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 417
    .local v7, "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 419
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v3, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 421
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v8, "id"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 423
    const-string v8, "RoomId"

    const-string v9, "id"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 424
    const-string v8, "RoomName"

    const-string v9, "roomName"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 425
    const-string v8, "RoomTypeId"

    const-string v9, "roomType"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 426
    const-string v8, "RoomImageType"

    const-string v9, "roomImageId"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 427
    const-string v8, "position"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 430
    const-string v8, "hideStatus"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 431
    const-string v8, "hide"

    const-string v9, "hideStatus"

    invoke-virtual {v3, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 435
    :goto_1
    sget-object v8, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    iget-object v8, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v8, v7}, LDatabase/DatabaseHandler;->insertRoomNew(Ljava/util/HashMap;)V

    :goto_2
    move-object v2, v3

    .line 414
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 433
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v8, "hide"

    const-string v9, "0"

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 447
    :catch_0
    move-exception v0

    move-object v2, v3

    .line 448
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .local v0, "e":Lorg/json/JSONException;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_4
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3

    .line 440
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_1
    :try_start_2
    new-instance v6, Lorg/json/JSONObject;

    const-string v8, "objSwitch"

    invoke-virtual {v3, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 441
    .local v6, "object":Lorg/json/JSONObject;
    const-string v8, "lockCode"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, "lockCode":Ljava/lang/String;
    iget-object v8, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8, v4}, LSession/SessionManager;->saveLockCode(Ljava/lang/String;)V

    .line 443
    const-string v8, "id"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 444
    .local v5, "lockSwitchId":Ljava/lang/String;
    iget-object v8, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v8, v5}, LSession/SessionManager;->saveLockSwitchId(Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 452
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "lockCode":Ljava/lang/String;
    .end local v5    # "lockSwitchId":Ljava/lang/String;
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_2
    return-void

    .line 447
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v7    # "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    goto :goto_4
.end method

.method private getRoomListLocal()V
    .locals 2

    .prologue
    .line 681
    :try_start_0
    sget-object v1, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 682
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1}, LDatabase/DatabaseHandler;->getRooms()Ljava/util/ArrayList;

    move-result-object v1

    sput-object v1, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 686
    :goto_0
    return-void

    .line 683
    :catch_0
    move-exception v0

    .line 684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private getRoomListServer()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 300
    sget-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v2, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    const-string v1, "Internet"

    iput-object v1, p0, LFragments/Rooms;->messageType:Ljava/lang/String;

    .line 306
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 307
    .local v0, "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "userId"

    iget-object v2, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 308
    const-string v1, "messageFrom"

    iget-object v2, p0, LFragments/Rooms;->messageType:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 309
    const-string v1, "/room/getlistbyuser"

    iput-object v1, p0, LFragments/Rooms;->strWebserviceName:Ljava/lang/String;

    .line 310
    iput v4, p0, LFragments/Rooms;->methodType:I

    .line 313
    iget-object v1, p0, LFragments/Rooms;->messageType:Ljava/lang/String;

    const-string v2, "Internet"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 314
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    .line 329
    :goto_1
    return-void

    .line 303
    .end local v0    # "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_0
    const-string v1, "Localhub"

    iput-object v1, p0, LFragments/Rooms;->messageType:Ljava/lang/String;

    goto :goto_0

    .line 316
    .restart local v0    # "jsonParams":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    .line 317
    sget-boolean v1, LFragments/Rooms;->isFirstTimeCall:Z

    if-eqz v1, :cond_3

    .line 318
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_2

    .line 319
    new-instance v1, LFragments/Rooms$AsyncRoomListTask;

    invoke-direct {v1, p0}, LFragments/Rooms$AsyncRoomListTask;-><init>(LFragments/Rooms;)V

    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2, v3}, LFragments/Rooms$AsyncRoomListTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 321
    :cond_2
    new-instance v1, LFragments/Rooms$AsyncRoomListTask;

    invoke-direct {v1, p0}, LFragments/Rooms$AsyncRoomListTask;-><init>(LFragments/Rooms;)V

    new-array v2, v3, [Ljava/lang/Void;

    invoke-virtual {v1, v2}, LFragments/Rooms$AsyncRoomListTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_1

    .line 324
    :cond_3
    sput-boolean v4, LFragments/Rooms;->isFirstTimeCall:Z

    goto :goto_1
.end method

.method private initWidgets()V
    .locals 2

    .prologue
    .line 689
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iput-object v0, p0, LFragments/Rooms;->context:Landroid/content/Context;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    .line 691
    new-instance v0, LSession/SessionManager;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    .line 692
    iget-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    const v1, 0x7f0d0199

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Rooms;->txtCount:Landroid/widget/TextView;

    .line 693
    iget-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    const v1, 0x7f0d00a4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LFragments/Rooms;->tvMessageInt:Landroid/widget/TextView;

    .line 694
    iget-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    const v1, 0x7f0d022e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    .line 695
    iget-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    const v1, 0x7f0d022d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LFragments/Rooms;->linearLayout:Landroid/widget/LinearLayout;

    .line 696
    iget-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    const v1, 0x7f0d022c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/widget/SwipeRefreshLayout;

    iput-object v0, p0, LFragments/Rooms;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    .line 697
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Rooms;->pDialog:Landroid/app/ProgressDialog;

    .line 698
    iget-object v0, p0, LFragments/Rooms;->pDialog:Landroid/app/ProgressDialog;

    const-string v1, "Kindly wait..."

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 699
    iget-object v0, p0, LFragments/Rooms;->pDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 701
    return-void
.end method

.method private insertDefaultValuesInDatabase()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getRoomTypeCount()I

    move-result v0

    if-ge v0, v1, :cond_0

    .line 125
    invoke-direct {p0}, LFragments/Rooms;->insertRoomType()V

    .line 128
    :cond_0
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getRoomCount()I

    move-result v0

    if-ge v0, v1, :cond_1

    .line 129
    invoke-direct {p0}, LFragments/Rooms;->insertRoom()V

    .line 132
    :cond_1
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getSwitchCount()I

    move-result v0

    if-ge v0, v1, :cond_2

    .line 133
    invoke-direct {p0}, LFragments/Rooms;->insertSwitch()V

    .line 135
    :cond_2
    return-void
.end method

.method private insertRoom()V
    .locals 3

    .prologue
    .line 262
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 263
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomName"

    const-string v2, "Hall"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomTypeId"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomImageType"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomId"

    const-string v2, "1"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->insertRoom(Ljava/util/HashMap;)V

    .line 269
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 270
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomName"

    const-string v2, "Kitchen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomTypeId"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomImageType"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomId"

    const-string v2, "2"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->insertRoom(Ljava/util/HashMap;)V

    .line 276
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 277
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomName"

    const-string v2, "Bedroom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomTypeId"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomImageType"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomId"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->insertRoom(Ljava/util/HashMap;)V

    .line 283
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 284
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomName"

    const-string v2, "Balcony"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomTypeId"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomImageType"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomId"

    const-string v2, "4"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 288
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->insertRoom(Ljava/util/HashMap;)V

    .line 290
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 291
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomName"

    const-string v2, "Bathroom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomTypeId"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 293
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomImageType"

    const-string v2, "3"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    iget-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v1, "RoomId"

    const-string v2, "5"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    iget-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v1, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->insertRoom(Ljava/util/HashMap;)V

    .line 297
    return-void
.end method

.method private insertRoomType()V
    .locals 3

    .prologue
    .line 455
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 456
    .local v0, "roomtype":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "roomTypeName"

    const-string v2, "Hall"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->insertRoomType(Ljava/util/HashMap;)V

    .line 459
    const-string v1, "roomTypeName"

    const-string v2, "Kitchen"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->insertRoomType(Ljava/util/HashMap;)V

    .line 463
    const-string v1, "roomTypeName"

    const-string v2, "Bedroom"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->insertRoomType(Ljava/util/HashMap;)V

    .line 466
    const-string v1, "roomTypeName"

    const-string v2, "Toliet"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 467
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->insertRoomType(Ljava/util/HashMap;)V

    .line 469
    return-void
.end method

.method private insertSwitch()V
    .locals 15

    .prologue
    .line 139
    const/4 v11, 0x6

    new-array v0, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Curtain"

    aput-object v12, v0, v11

    const/4 v11, 0x1

    const-string v12, "Socket"

    aput-object v12, v0, v11

    const/4 v11, 0x2

    const-string v12, "Tube"

    aput-object v12, v0, v11

    const/4 v11, 0x3

    const-string v12, "AC"

    aput-object v12, v0, v11

    const/4 v11, 0x4

    const-string v12, "Dimmer Bulb"

    aput-object v12, v0, v11

    const/4 v11, 0x5

    const-string v12, "Fan"

    aput-object v12, v0, v11

    .line 140
    .local v0, "arrHallSwitch":[Ljava/lang/String;
    const/4 v11, 0x6

    new-array v4, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "24"

    aput-object v12, v4, v11

    const/4 v11, 0x1

    const-string v12, "13"

    aput-object v12, v4, v11

    const/4 v11, 0x2

    const-string v12, "18"

    aput-object v12, v4, v11

    const/4 v11, 0x3

    const-string v12, "1"

    aput-object v12, v4, v11

    const/4 v11, 0x4

    const-string v12, "0"

    aput-object v12, v4, v11

    const/4 v11, 0x5

    const-string v12, "8"

    aput-object v12, v4, v11

    .line 142
    .local v4, "arrHallSwitchImage":[Ljava/lang/String;
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    const/4 v11, 0x6

    if-ge v10, v11, :cond_3

    .line 143
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 144
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchName"

    aget-object v13, v0, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomName"

    const-string v13, "Hall"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchTypeid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomId"

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    if-nez v10, :cond_0

    .line 150
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "2"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    :goto_1
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "switch_image_id"

    aget-object v13, v4, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerValue"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "lock"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "hide"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    iget-object v11, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v12, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, LDatabase/DatabaseHandler;->insertSwitch(Ljava/util/HashMap;)V

    .line 142
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 151
    :cond_0
    const/4 v11, 0x4

    if-eq v10, v11, :cond_1

    const/4 v11, 0x5

    if-ne v10, v11, :cond_2

    .line 152
    :cond_1
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 154
    :cond_2
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 164
    :cond_3
    const/4 v11, 0x6

    new-array v8, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Lock"

    aput-object v12, v8, v11

    const/4 v11, 0x1

    const-string v12, "Exhaust"

    aput-object v12, v8, v11

    const/4 v11, 0x2

    const-string v12, "Socket"

    aput-object v12, v8, v11

    const/4 v11, 0x3

    const-string v12, "Refrigerator"

    aput-object v12, v8, v11

    const/4 v11, 0x4

    const-string v12, "Microwave"

    aput-object v12, v8, v11

    const/4 v11, 0x5

    const-string v12, "Mixer"

    aput-object v12, v8, v11

    .line 165
    .local v8, "arrKitchenSwitch":[Ljava/lang/String;
    const/4 v11, 0x6

    new-array v9, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "25"

    aput-object v12, v9, v11

    const/4 v11, 0x1

    const-string v12, "7"

    aput-object v12, v9, v11

    const/4 v11, 0x2

    const-string v12, "13"

    aput-object v12, v9, v11

    const/4 v11, 0x3

    const-string v12, "9"

    aput-object v12, v9, v11

    const/4 v11, 0x4

    const-string v12, "10"

    aput-object v12, v9, v11

    const/4 v11, 0x5

    const-string v12, "11"

    aput-object v12, v9, v11

    .line 167
    .local v9, "arrKitchenSwitchImage":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_2
    const/4 v11, 0x6

    if-ge v10, v11, :cond_7

    .line 168
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 169
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchName"

    aget-object v13, v8, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomName"

    const-string v13, "Kitchen"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 171
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchTypeid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomId"

    const-string v13, "2"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    if-nez v10, :cond_4

    .line 176
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "3"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    :goto_3
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerValue"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "switch_image_id"

    aget-object v13, v9, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "lock"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "hide"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 186
    iget-object v11, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v12, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, LDatabase/DatabaseHandler;->insertSwitch(Ljava/util/HashMap;)V

    .line 167
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 177
    :cond_4
    const/4 v11, 0x4

    if-eq v10, v11, :cond_5

    const/4 v11, 0x5

    if-ne v10, v11, :cond_6

    .line 178
    :cond_5
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 180
    :cond_6
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 190
    :cond_7
    const/4 v11, 0x6

    new-array v1, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Tube"

    aput-object v12, v1, v11

    const/4 v11, 0x1

    const-string v12, "Socket"

    aput-object v12, v1, v11

    const/4 v11, 0x2

    const-string v12, "Desk Lamp"

    aput-object v12, v1, v11

    const/4 v11, 0x3

    const-string v12, "AC"

    aput-object v12, v1, v11

    const/4 v11, 0x4

    const-string v12, "Dimmer Bulb"

    aput-object v12, v1, v11

    const/4 v11, 0x5

    const-string v12, "Fan"

    aput-object v12, v1, v11

    .line 191
    .local v1, "arrHallSwitch2":[Ljava/lang/String;
    const/4 v11, 0x6

    new-array v5, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "18"

    aput-object v12, v5, v11

    const/4 v11, 0x1

    const-string v12, "13"

    aput-object v12, v5, v11

    const/4 v11, 0x2

    const-string v12, "4"

    aput-object v12, v5, v11

    const/4 v11, 0x3

    const-string v12, "1"

    aput-object v12, v5, v11

    const/4 v11, 0x4

    const-string v12, "0"

    aput-object v12, v5, v11

    const/4 v11, 0x5

    const-string v12, "8"

    aput-object v12, v5, v11

    .line 193
    .local v5, "arrHallSwitchImage2":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x6

    if-ge v10, v11, :cond_a

    .line 194
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 195
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchName"

    aget-object v13, v1, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomName"

    const-string v13, "Bedroom"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchTypeid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 198
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomId"

    const-string v13, "3"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    const/4 v11, 0x4

    if-eq v10, v11, :cond_8

    const/4 v11, 0x5

    if-ne v10, v11, :cond_9

    .line 201
    :cond_8
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    :goto_5
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerValue"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "switch_image_id"

    aget-object v13, v5, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "lock"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "hide"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    iget-object v11, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v12, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, LDatabase/DatabaseHandler;->insertSwitch(Ljava/util/HashMap;)V

    .line 193
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_4

    .line 203
    :cond_9
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 214
    :cond_a
    const/4 v11, 0x2

    new-array v2, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Tube"

    aput-object v12, v2, v11

    const/4 v11, 0x1

    const-string v12, "Dimmer Bulb"

    aput-object v12, v2, v11

    .line 215
    .local v2, "arrHallSwitch3":[Ljava/lang/String;
    const/4 v11, 0x2

    new-array v6, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "18"

    aput-object v12, v6, v11

    const/4 v11, 0x1

    const-string v12, "0"

    aput-object v12, v6, v11

    .line 217
    .local v6, "arrHallSwitchImage3":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_6
    const/4 v11, 0x2

    if-ge v10, v11, :cond_c

    .line 218
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 219
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchName"

    aget-object v13, v2, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomName"

    const-string v13, "Balcony"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchTypeid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 223
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomId"

    const-string v13, "4"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    const/4 v11, 0x1

    if-ne v10, v11, :cond_b

    .line 225
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "1"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    :goto_7
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerValue"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "switch_image_id"

    aget-object v13, v6, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "lock"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "hide"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget-object v11, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v12, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, LDatabase/DatabaseHandler;->insertSwitch(Ljava/util/HashMap;)V

    .line 217
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_6

    .line 227
    :cond_b
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    .line 237
    :cond_c
    const/4 v11, 0x4

    new-array v3, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "Washing Machine"

    aput-object v12, v3, v11

    const/4 v11, 0x1

    const-string v12, "Pongo Color Tube"

    aput-object v12, v3, v11

    const/4 v11, 0x2

    const-string v12, "Exhaust"

    aput-object v12, v3, v11

    const/4 v11, 0x3

    const-string v12, "Water Heater"

    aput-object v12, v3, v11

    .line 238
    .local v3, "arrHallSwitch4":[Ljava/lang/String;
    const/4 v11, 0x4

    new-array v7, v11, [Ljava/lang/String;

    const/4 v11, 0x0

    const-string v12, "19"

    aput-object v12, v7, v11

    const/4 v11, 0x1

    const-string v12, "13"

    aput-object v12, v7, v11

    const/4 v11, 0x2

    const-string v12, "7"

    aput-object v12, v7, v11

    const/4 v11, 0x3

    const-string v12, "20"

    aput-object v12, v7, v11

    .line 240
    .local v7, "arrHallSwitchImage4":[Ljava/lang/String;
    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x4

    if-ge v10, v11, :cond_e

    .line 241
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11}, Ljava/util/HashMap;->clear()V

    .line 242
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchName"

    aget-object v13, v3, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomName"

    const-string v13, "Bathroom"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchTypeid"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v14, v10, 0x1

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ""

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "SwitchStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "RoomId"

    const-string v13, "5"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    const/4 v11, 0x1

    if-ne v10, v11, :cond_d

    .line 248
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "5"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :goto_9
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerValue"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "switch_image_id"

    aget-object v13, v7, v10

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "lock"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "hide"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v11, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v12, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    invoke-virtual {v11, v12}, LDatabase/DatabaseHandler;->insertSwitch(Ljava/util/HashMap;)V

    .line 240
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_8

    .line 250
    :cond_d
    iget-object v11, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    const-string v12, "DimmerStatus"

    const-string v13, "0"

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    .line 259
    :cond_e
    return-void
.end method

.method private onClickOfHideMenu()V
    .locals 3

    .prologue
    .line 631
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v2, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v2}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "RoomId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v0, v2}, LDatabase/DatabaseHandler;->updateRoomHidestatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v2, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v2}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "RoomId"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v0, v2}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 633
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    .line 634
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "NotificationSend"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 636
    return-void
.end method

.method private setRoomAdapter()V
    .locals 5

    .prologue
    .line 505
    :try_start_0
    iget-object v2, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getMainLockRoom()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 506
    iget-object v2, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    iget-object v3, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getMainLockRoom()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDatabase/DatabaseHandler;->deleteMainLockRoom(Ljava/lang/String;)V

    .line 509
    :cond_0
    iget-object v2, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v2}, LDatabase/DatabaseHandler;->getRooms()Ljava/util/ArrayList;

    move-result-object v2

    sput-object v2, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    .line 510
    sget-object v2, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_1

    .line 511
    iget-object v2, p0, LFragments/Rooms;->tvMessageInt:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 512
    iget-object v2, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 513
    new-instance v2, LAdapter/AdapterCustomRooms;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    sget-object v4, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    invoke-direct {v2, v3, v4, p0, p0}, LAdapter/AdapterCustomRooms;-><init>(Landroid/content/Context;Ljava/util/ArrayList;LSession/OnStartDragListener;LSession/OnCustomerListChangedListener;)V

    iput-object v2, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    .line 516
    new-instance v0, LSession/SimpleItemTouchHelperCallback;

    iget-object v2, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-direct {v0, v2}, LSession/SimpleItemTouchHelperCallback;-><init>(LSession/ItemTouchHelperAdapter;)V

    .line 517
    .local v0, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    new-instance v2, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v2, v0}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v2, p0, LFragments/Rooms;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 518
    iget-object v2, p0, LFragments/Rooms;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v3, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 519
    iget-object v2, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 520
    iget-object v2, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 521
    iget-object v2, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v2}, LAdapter/AdapterCustomRooms;->notifyDataSetChanged()V

    .line 527
    .end local v0    # "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    :goto_0
    return-void

    .line 523
    :cond_1
    iget-object v2, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 524
    iget-object v2, p0, LFragments/Rooms;->tvMessageInt:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 526
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 7
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 531
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 586
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    .line 589
    :goto_0
    return v0

    .line 533
    :pswitch_1
    iget-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "2"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v0

    const-string v2, "3"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 534
    :cond_0
    iget-object v0, p0, LFragments/Rooms;->context:Landroid/content/Context;

    invoke-virtual {p0}, LFragments/Rooms;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1
    move v0, v1

    .line 589
    goto :goto_0

    .line 537
    :cond_1
    const-string v0, "Edit"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v3}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v2}, LFragments/Rooms;->addRoomDialog1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 542
    :pswitch_2
    iget-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DemoUser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v2, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v3, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v3}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "RoomId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    goto :goto_1

    .line 546
    :cond_2
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 547
    iget-object v2, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v3, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v3}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "RoomId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v0, v3}, LDatabase/DatabaseHandler;->isAlreadyONOFF(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 548
    new-instance v2, LFragments/Rooms$TurnOffAllSwitchAsyncTask;

    invoke-direct {v2, p0, v6}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;-><init>(LFragments/Rooms;LFragments/Rooms$1;)V

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "0"

    aput-object v0, v3, v4

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v4, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v4}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 550
    :cond_3
    iget-object v0, p0, LFragments/Rooms;->context:Landroid/content/Context;

    const-string v2, "Switches are already OFF"

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 553
    :cond_4
    iget-object v0, p0, LFragments/Rooms;->context:Landroid/content/Context;

    const-string v2, "Kindly check internet connection"

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 560
    :pswitch_3
    iget-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DemoUser"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 561
    iget-object v2, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v3, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v3}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "RoomId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    goto/16 :goto_1

    .line 564
    :cond_5
    invoke-static {}, LSession/Constants;->getInstance()LSession/Constants;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, LSession/Constants;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 565
    iget-object v2, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v3, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v3}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "RoomId"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v0, v3}, LDatabase/DatabaseHandler;->isAlreadyONOFF(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 566
    new-instance v2, LFragments/Rooms$TurnOffAllSwitchAsyncTask;

    invoke-direct {v2, p0, v6}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;-><init>(LFragments/Rooms;LFragments/Rooms$1;)V

    new-array v3, v5, [Ljava/lang/String;

    const-string v0, "1"

    aput-object v0, v3, v4

    sget-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    iget-object v4, p0, LFragments/Rooms;->adapter:LAdapter/AdapterCustomRooms;

    invoke-virtual {v4}, LAdapter/AdapterCustomRooms;->getPosition()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v3, v1

    invoke-virtual {v2, v3}, LFragments/Rooms$TurnOffAllSwitchAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_1

    .line 568
    :cond_6
    iget-object v0, p0, LFragments/Rooms;->context:Landroid/content/Context;

    const-string v2, "Switches are already ON"

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 571
    :cond_7
    iget-object v0, p0, LFragments/Rooms;->context:Landroid/content/Context;

    const-string v2, "Kindly check internet connection"

    invoke-static {v0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 577
    :pswitch_4
    invoke-direct {p0}, LFragments/Rooms;->alertHideSwitch()V

    goto/16 :goto_1

    .line 580
    :pswitch_5
    invoke-direct {p0}, LFragments/Rooms;->createAlertPassdDialog()V

    goto/16 :goto_1

    .line 583
    :pswitch_6
    invoke-direct {p0}, LFragments/Rooms;->onClickOfHideMenu()V

    goto/16 :goto_1

    .line 531
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0276
        :pswitch_1
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "inflater"    # Landroid/view/MenuInflater;

    .prologue
    .line 853
    const v0, 0x7f0e0008

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 854
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 108
    const v0, 0x7f040095

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    .line 109
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LFragments/Rooms;->db:LDatabase/DatabaseHandler;

    .line 110
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, LFragments/Rooms;->setHasOptionsMenu(Z)V

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, LFragments/Rooms;->roomDatas:Ljava/util/ArrayList;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, LFragments/Rooms;->tempMap:Ljava/util/HashMap;

    .line 113
    invoke-direct {p0}, LFragments/Rooms;->initWidgets()V

    .line 115
    iget-object v0, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 116
    invoke-direct {p0}, LFragments/Rooms;->insertDefaultValuesInDatabase()V

    .line 119
    :cond_0
    iget-object v0, p0, LFragments/Rooms;->swipeContainer:Landroid/support/v4/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroid/support/v4/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 120
    iget-object v0, p0, LFragments/Rooms;->view:Landroid/view/View;

    return-object v0
.end method

.method public onNoteListChanged(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 334
    .local p1, "maps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 857
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 867
    :goto_0
    const/4 v1, 0x1

    return v1

    .line 859
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/iot/engine/HideList;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 860
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "RoomId"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 861
    const-string v1, "RoomName"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 862
    invoke-virtual {p0, v0}, LFragments/Rooms;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 857
    :pswitch_data_0
    .packed-switch 0x7f0d0285
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 802
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 803
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, LFragments/Rooms;->message:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 804
    return-void
.end method

.method public onResume()V
    .locals 5

    .prologue
    .line 472
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 474
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 475
    .local v0, "bottomUp":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 476
    iget-object v1, p0, LFragments/Rooms;->lstRoom:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 477
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, LFragments/Rooms;->message:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "NotificationSend"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 479
    iget-object v1, p0, LFragments/Rooms;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 480
    invoke-direct {p0}, LFragments/Rooms;->getRoomListLocal()V

    .line 481
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    .line 492
    :goto_0
    return-void

    .line 484
    :cond_0
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/iot/engine/MainActivity;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 485
    invoke-direct {p0}, LFragments/Rooms;->getRoomListServer()V

    goto :goto_0

    .line 487
    :cond_1
    invoke-direct {p0}, LFragments/Rooms;->setRoomAdapter()V

    .line 488
    invoke-virtual {p0}, LFragments/Rooms;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-string v2, "Check internet connection!!!"

    invoke-static {v1, v2}, Lcom/iot/engine/MainActivity;->myToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 338
    iget-object v0, p0, LFragments/Rooms;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 339
    return-void
.end method
