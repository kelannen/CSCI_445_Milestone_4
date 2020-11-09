.class public LAdapter/AdapterCustomRooms;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AdapterCustomRooms.java"

# interfaces
.implements LSession/ItemTouchHelperAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/AdapterCustomRooms$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/AdapterCustomRooms$MyViewHolder;",
        ">;",
        "LSession/ItemTouchHelperAdapter;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterCustomRooms"


# instance fields
.field context:Landroid/content/Context;

.field db:LDatabase/DatabaseHandler;

.field private mDragStartListener:LSession/OnStartDragListener;

.field private mListChangedListener:LSession/OnCustomerListChangedListener;

.field private mPosition:I

.field myImageList:[I

.field private final roomDatas:Ljava/util/ArrayList;
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


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;LSession/OnStartDragListener;LSession/OnCustomerListChangedListener;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "dragLlistener"    # LSession/OnStartDragListener;
    .param p4, "listChangedListener"    # LSession/OnCustomerListChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "LSession/OnStartDragListener;",
            "LSession/OnCustomerListChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 65
    .local p2, "roomDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 55
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, LAdapter/AdapterCustomRooms;->myImageList:[I

    .line 66
    iput-object p2, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    .line 68
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/AdapterCustomRooms;->db:LDatabase/DatabaseHandler;

    .line 69
    iput-object p3, p0, LAdapter/AdapterCustomRooms;->mDragStartListener:LSession/OnStartDragListener;

    .line 70
    iput-object p4, p0, LAdapter/AdapterCustomRooms;->mListChangedListener:LSession/OnCustomerListChangedListener;

    .line 71
    return-void

    .line 55
    :array_0
    .array-data 4
        0x7f020065
        0x7f020110
        0x7f02010d
        0x7f020063
        0x7f020061
        0x7f02010f
        0x7f020199
        0x7f020194
        0x7f02010c
        0x7f020167
        0x7f020112
        0x7f02014a
    .end array-data
.end method

.method static synthetic access$000(LAdapter/AdapterCustomRooms;)LSession/OnStartDragListener;
    .locals 1
    .param p0, "x0"    # LAdapter/AdapterCustomRooms;

    .prologue
    .line 52
    iget-object v0, p0, LAdapter/AdapterCustomRooms;->mDragStartListener:LSession/OnStartDragListener;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/AdapterCustomRooms;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # LAdapter/AdapterCustomRooms;

    .prologue
    .line 52
    iget-object v0, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(LAdapter/AdapterCustomRooms;I)V
    .locals 0
    .param p0, "x0"    # LAdapter/AdapterCustomRooms;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, LAdapter/AdapterCustomRooms;->navigateToLivingRoom(I)V

    return-void
.end method

.method private insertRoomInfo(IILjava/lang/String;)V
    .locals 4
    .param p1, "mSwitchType"    # I
    .param p2, "position"    # I
    .param p3, "mDimmerStatus"    # Ljava/lang/String;

    .prologue
    .line 264
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 265
    .local v0, "switcch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "SwitchName"

    const-string v2, "Bulb"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    const-string v2, "RoomName"

    iget-object v1, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    const-string v1, "SwitchTypeid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    const-string v1, "SwitchStatus"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    const-string v2, "RoomId"

    iget-object v1, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomId"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    const-string v1, "DimmerStatus"

    invoke-virtual {v0, v1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 271
    const-string v1, "DimmerValue"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    const-string v1, "lock"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    const-string v1, "hide"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    const-string v1, "Switch Insert Data "

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    iget-object v1, p0, LAdapter/AdapterCustomRooms;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v1, v0}, LDatabase/DatabaseHandler;->insertSwitch(Ljava/util/HashMap;)V

    .line 278
    return-void
.end method

.method private navigateToLivingRoom(I)V
    .locals 5
    .param p1, "curPosition"    # I

    .prologue
    .line 174
    :try_start_0
    iget-object v0, p0, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    .line 175
    .local v0, "activity":Landroid/app/Activity;
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    const-class v3, Lcom/iot/engine/LivingRoom;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 176
    .local v1, "intent":Landroid/content/Intent;
    const-string v3, "RoomId"

    iget-object v2, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "RoomId"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    const-string v3, "RoomName"

    iget-object v2, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "RoomName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 178
    const-string v3, "NetWorkInfo"

    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v4, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "INTERNET"

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 179
    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 180
    const v2, 0x7f050011

    const v3, 0x7f050012

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 182
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :goto_1
    return-void

    .line 178
    .restart local v0    # "activity":Landroid/app/Activity;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_0
    const-string v2, "WIFI"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 181
    .end local v0    # "activity":Landroid/app/Activity;
    .end local v1    # "intent":Landroid/content/Intent;
    :catch_0
    move-exception v2

    goto :goto_1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 251
    iget-object v0, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 255
    iget v0, p0, LAdapter/AdapterCustomRooms;->mPosition:I

    return v0
.end method

.method public onBindViewHolder(LAdapter/AdapterCustomRooms$MyViewHolder;I)V
    .locals 7
    .param p1, "holder"    # LAdapter/AdapterCustomRooms$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 82
    new-instance v3, LSession/SessionManager;

    iget-object v4, p0, LAdapter/AdapterCustomRooms;->context:Landroid/content/Context;

    invoke-direct {v3, v4}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 84
    .local v3, "session":LSession/SessionManager;
    iget-object v5, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->tv:Landroid/widget/TextView;

    iget-object v4, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "RoomName"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/CharSequence;

    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v4, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v5, "RoomImageType"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 88
    .local v0, "mImage":Ljava/lang/String;
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->img:Landroid/widget/ImageView;

    iget-object v5, p0, LAdapter/AdapterCustomRooms;->myImageList:[I

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    aget v5, v5, v6

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 90
    iget-object v5, p0, LAdapter/AdapterCustomRooms;->db:LDatabase/DatabaseHandler;

    iget-object v4, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    const-string v6, "RoomId"

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, LDatabase/DatabaseHandler;->getSwitchRoomStatusCount(Ljava/lang/String;)I

    move-result v1

    .line 92
    .local v1, "mRoomOnCount":I
    if-lez v1, :cond_0

    .line 93
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->tvRoomCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->tvRoomCount:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    :goto_0
    move-object v2, p1

    .line 102
    .local v2, "mholder":LAdapter/AdapterCustomRooms$MyViewHolder;
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->itemboard:Landroid/widget/LinearLayout;

    new-instance v5, LAdapter/AdapterCustomRooms$1;

    invoke-direct {v5, p0, v2}, LAdapter/AdapterCustomRooms$1;-><init>(LAdapter/AdapterCustomRooms;LAdapter/AdapterCustomRooms$MyViewHolder;)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 110
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->img:Landroid/widget/ImageView;

    new-instance v5, LAdapter/AdapterCustomRooms$2;

    invoke-direct {v5, p0, p1}, LAdapter/AdapterCustomRooms$2;-><init>(LAdapter/AdapterCustomRooms;LAdapter/AdapterCustomRooms$MyViewHolder;)V

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 121
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->itemboard:Landroid/widget/LinearLayout;

    new-instance v5, LAdapter/AdapterCustomRooms$3;

    invoke-direct {v5, p0, v3, p2}, LAdapter/AdapterCustomRooms$3;-><init>(LAdapter/AdapterCustomRooms;LSession/SessionManager;I)V

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 170
    return-void

    .line 96
    .end local v2    # "mholder":LAdapter/AdapterCustomRooms$MyViewHolder;
    :cond_0
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->tvRoomCount:Landroid/widget/TextView;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v4, p1, LAdapter/AdapterCustomRooms$MyViewHolder;->tvRoomCount:Landroid/widget/TextView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 52
    check-cast p1, LAdapter/AdapterCustomRooms$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomRooms;->onBindViewHolder(LAdapter/AdapterCustomRooms$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/AdapterCustomRooms$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040067

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 76
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/AdapterCustomRooms$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/AdapterCustomRooms$MyViewHolder;-><init>(LAdapter/AdapterCustomRooms;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 52
    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomRooms;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/AdapterCustomRooms$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onItemDismiss(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 211
    return-void
.end method

.method public onItemMove(II)V
    .locals 6
    .param p1, "fromPosition"    # I
    .param p2, "toPosition"    # I

    .prologue
    .line 192
    const-string v2, "AdapterCustomRooms"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onItemMove: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :try_start_0
    iget-object v2, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-static {v2, p1, p2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    .line 195
    iget-object v2, p0, LAdapter/AdapterCustomRooms;->mListChangedListener:LSession/OnCustomerListChangedListener;

    iget-object v3, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-interface {v2, v3}, LSession/OnCustomerListChangedListener;->onNoteListChanged(Ljava/util/ArrayList;)V

    .line 196
    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomRooms;->notifyItemMoved(II)V

    .line 197
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 198
    iget-object v3, p0, LAdapter/AdapterCustomRooms;->db:LDatabase/DatabaseHandler;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v2, p0, LAdapter/AdapterCustomRooms;->roomDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "RoomId"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, LDatabase/DatabaseHandler;->updateRoomPosition(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 200
    .end local v1    # "i":I
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 259
    iput p1, p0, LAdapter/AdapterCustomRooms;->mPosition:I

    .line 260
    return-void
.end method
