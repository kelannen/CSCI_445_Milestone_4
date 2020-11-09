.class public Lcom/iot/engine/HideList;
.super Landroid/app/Activity;
.source "HideList.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements LSession/IOnClickListner;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/HideList$HideSwitchesAsyncTask;,
        Lcom/iot/engine/HideList$AsyncTaskForHideRoom;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HideList"

.field public static mRoomId:Ljava/lang/String;

.field public static mRoomName:Ljava/lang/String;


# instance fields
.field adapter:LAdapter/HideListAdapter;

.field private adapterRoom:LAdapter/RoomHideListAdapter;

.field arrayList:Ljava/util/ArrayList;
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

.field db:LDatabase/DatabaseHandler;

.field mImgBack:Landroid/widget/ImageView;

.field mTxtHeading:Landroid/widget/TextView;

.field mTxtUnhide:Landroid/widget/TextView;

.field private messageMqtt:Landroid/content/BroadcastReceiver;

.field private messageType:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 313
    new-instance v0, Lcom/iot/engine/HideList$1;

    invoke-direct {v0, p0}, Lcom/iot/engine/HideList$1;-><init>(Lcom/iot/engine/HideList;)V

    iput-object v0, p0, Lcom/iot/engine/HideList;->messageMqtt:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private UpdateHideStatus(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .param p2, "hideStatus"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p1, "mapHide":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 147
    .local v0, "database":LDatabase/DatabaseHandler;
    sget-object v1, Lcom/iot/engine/HideList;->mRoomId:Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 148
    const-string v1, "RoomId"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, LDatabase/DatabaseHandler;->updateRoomHidestatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    sget-object v2, Lcom/iot/engine/HideList;->mRoomId:Ljava/lang/String;

    const-string v1, "SwitchID"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2}, LDatabase/DatabaseHandler;->UpdateHideStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100(Lcom/iot/engine/HideList;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/HideList;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iot/engine/HideList;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$102(Lcom/iot/engine/HideList;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/HideList;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/iot/engine/HideList;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcom/iot/engine/HideList;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/HideList;

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/iot/engine/HideList;->setAdapter()V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/HideList;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/HideList;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/iot/engine/HideList;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/HideList;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/HideList;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/HideList;->UpdateHideStatus(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method private initialiseControls()V
    .locals 2

    .prologue
    .line 89
    const v1, 0x7f0d00eb

    invoke-virtual {p0, v1}, Lcom/iot/engine/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/iot/engine/HideList;->mTxtHeading:Landroid/widget/TextView;

    .line 90
    const v1, 0x7f0d0156

    invoke-virtual {p0, v1}, Lcom/iot/engine/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/iot/engine/HideList;->mImgBack:Landroid/widget/ImageView;

    .line 91
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    .line 92
    const v1, 0x7f0d00d5

    invoke-virtual {p0, v1}, Lcom/iot/engine/HideList;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/iot/engine/HideList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 93
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/iot/engine/HideList;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 94
    .local v0, "mLayoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    iget-object v1, p0, Lcom/iot/engine/HideList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 95
    iget-object v1, p0, Lcom/iot/engine/HideList;->mImgBack:Landroid/widget/ImageView;

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    return-void
.end method

.method private setAdapter()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 110
    sget-object v0, Lcom/iot/engine/HideList;->mRoomId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/iot/engine/HideList;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v0}, LDatabase/DatabaseHandler;->getHideRooms()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    .line 113
    iget-object v0, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 114
    invoke-virtual {p0}, Lcom/iot/engine/HideList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No record found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 116
    :cond_0
    new-instance v0, LAdapter/RoomHideListAdapter;

    iget-object v1, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, LAdapter/RoomHideListAdapter;-><init>(Lcom/iot/engine/HideList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/iot/engine/HideList;->adapterRoom:LAdapter/RoomHideListAdapter;

    .line 117
    iget-object v0, p0, Lcom/iot/engine/HideList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/HideList;->adapterRoom:LAdapter/RoomHideListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 118
    iget-object v0, p0, Lcom/iot/engine/HideList;->adapterRoom:LAdapter/RoomHideListAdapter;

    invoke-virtual {v0}, LAdapter/RoomHideListAdapter;->notifyDataSetChanged()V

    .line 133
    :goto_0
    return-void

    .line 123
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/HideList;->db:LDatabase/DatabaseHandler;

    sget-object v1, Lcom/iot/engine/HideList;->mRoomId:Ljava/lang/String;

    invoke-virtual {v0, v1}, LDatabase/DatabaseHandler;->getHideSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    .line 124
    iget-object v0, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/iot/engine/HideList;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "No record found"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 127
    :cond_2
    new-instance v0, LAdapter/HideListAdapter;

    iget-object v1, p0, Lcom/iot/engine/HideList;->arrayList:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1}, LAdapter/HideListAdapter;-><init>(Lcom/iot/engine/HideList;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lcom/iot/engine/HideList;->adapter:LAdapter/HideListAdapter;

    .line 128
    iget-object v0, p0, Lcom/iot/engine/HideList;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/HideList;->adapter:LAdapter/HideListAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 129
    iget-object v0, p0, Lcom/iot/engine/HideList;->adapter:LAdapter/HideListAdapter;

    invoke-virtual {v0}, LAdapter/HideListAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 136
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 143
    :goto_0
    return-void

    .line 139
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/HideList;->finish()V

    .line 140
    const v0, 0x7f050015

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/HideList;->overridePendingTransition(II)V

    goto :goto_0

    .line 136
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
    .end packed-switch
.end method

.method public onClickListner(Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 157
    iget-object v0, p0, Lcom/iot/engine/HideList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemoUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    const-string v0, "0"

    invoke-direct {p0, p1, v0}, Lcom/iot/engine/HideList;->UpdateHideStatus(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 159
    invoke-direct {p0}, Lcom/iot/engine/HideList;->setAdapter()V

    .line 182
    :goto_0
    return-void

    .line 163
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/HideList;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 164
    const-string v0, "Oops you don\'t have authority to Hide the Switch."

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 168
    :cond_1
    sget-object v0, Lcom/iot/engine/HideList;->mRoomName:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 170
    new-instance v1, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;

    const/4 v0, 0x0

    invoke-direct {v1, p0, v0}, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;-><init>(Lcom/iot/engine/HideList;Lcom/iot/engine/HideList$1;)V

    new-array v2, v2, [Ljava/lang/String;

    const-string v0, "RoomId"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/iot/engine/HideList$AsyncTaskForHideRoom;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 174
    :cond_2
    invoke-static {p0}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 175
    new-instance v0, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;

    invoke-direct {v0, p0, p1}, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;-><init>(Lcom/iot/engine/HideList;Ljava/util/HashMap;)V

    new-array v1, v2, [Ljava/lang/String;

    const-string v2, "0"

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/iot/engine/HideList$HideSwitchesAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 177
    :cond_3
    invoke-virtual {p0}, Lcom/iot/engine/HideList;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060079

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const v1, 0x7f04005d

    invoke-virtual {p0, v1}, Lcom/iot/engine/HideList;->setContentView(I)V

    .line 68
    invoke-direct {p0}, Lcom/iot/engine/HideList;->initialiseControls()V

    .line 69
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-direct {v1, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/HideList;->db:LDatabase/DatabaseHandler;

    .line 70
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iot/engine/HideList;->sessionManager:LSession/SessionManager;

    .line 72
    invoke-virtual {p0}, Lcom/iot/engine/HideList;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 73
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "RoomId"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iot/engine/HideList;->mRoomId:Ljava/lang/String;

    .line 74
    const-string v1, "RoomName"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/iot/engine/HideList;->mRoomName:Ljava/lang/String;

    .line 76
    sget-object v1, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v2, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    const-string v1, "Internet"

    iput-object v1, p0, Lcom/iot/engine/HideList;->messageType:Ljava/lang/String;

    .line 83
    :goto_0
    invoke-direct {p0}, Lcom/iot/engine/HideList;->setAdapter()V

    .line 85
    return-void

    .line 80
    :cond_0
    const-string v1, "Localhub"

    iput-object v1, p0, Lcom/iot/engine/HideList;->messageType:Ljava/lang/String;

    goto :goto_0
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 309
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 310
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/HideList;->messageMqtt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 311
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 101
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/HideList;->messageMqtt:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "NotificationSend"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 102
    sget-object v0, Lcom/iot/engine/HideList;->mRoomId:Ljava/lang/String;

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/iot/engine/HideList;->mTxtHeading:Landroid/widget/TextView;

    const-string v1, "Hidden Rooms"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    :goto_0
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/HideList;->mTxtHeading:Landroid/widget/TextView;

    const-string v1, "Hidden Switches"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
