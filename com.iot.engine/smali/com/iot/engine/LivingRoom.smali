.class public Lcom/iot/engine/LivingRoom;
.super Landroid/support/v4/app/FragmentActivity;
.source "LivingRoom.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;
.implements LSession/IOnClickOfSwitchChange;
.implements LSession/OnCustomerListChangedListener;
.implements LSession/OnStartDragListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;,
        Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;,
        Lcom/iot/engine/LivingRoom$AsyncLockOpration;,
        Lcom/iot/engine/LivingRoom$AsyncHideOperation;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LivingRoom"

.field public static thisInstance:Lcom/iot/engine/LivingRoom;


# instance fields
.field private IPADDRESS:Ljava/lang/String;

.field adapter:LAdapter/AdapterCustomSwitch;

.field private adapterMove:LAdapter/MoveAdpater;

.field adapterTry:LAdapter/TryDemoSwitchAdpater;

.field backFlag:Z

.field private context:Landroid/content/Context;

.field private cordArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "LSession/MyCord;",
            ">;"
        }
    .end annotation
.end field

.field private db:LDatabase/DatabaseHandler;

.field private imgBack:Landroid/widget/ImageView;

.field private imgOption:Landroid/widget/ImageView;

.field private lstSwitches:Landroid/support/v7/widget/RecyclerView;

.field private lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

.field private mExplosionField:Ltyrantgit/explosionfield/ExplosionField;

.field private mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

.field private mNetWorkInfo:Ljava/lang/String;

.field mNumberOfBlast:I

.field public mRoomId:Ljava/lang/String;

.field private mRoomName:Ljava/lang/String;

.field mSwitchOFF:[I

.field mSwitchON:[I

.field mSwitchONOFFMap:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private messageMqtt:Landroid/content/BroadcastReceiver;

.field private messageType:Ljava/lang/String;

.field private methodType:I

.field private rrCountScreen:Landroid/widget/RelativeLayout;

.field private sessionManager:LSession/SessionManager;

.field private spotDialog:Ldmax/dialog/SpotsDialog;

.field private strWebserviceName:Ljava/lang/String;

.field private switchDatas:Ljava/util/ArrayList;
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

.field private switchDatasTemp:Ljava/util/ArrayList;
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

.field switchList:[Ljava/lang/String;

.field private txtCount:Landroid/widget/TextView;

.field private txtHeading:Landroid/widget/TextView;

.field private txtM:Landroid/widget/TextView;

.field private txtSafe:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x0

    sput-object v0, Lcom/iot/engine/LivingRoom;->thisInstance:Lcom/iot/engine/LivingRoom;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/16 v3, 0x1b

    .line 84
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    .line 95
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->strWebserviceName:Ljava/lang/String;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->mSwitchONOFFMap:Ljava/util/ArrayList;

    .line 110
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "Bulb"

    aput-object v1, v0, v4

    const/4 v1, 0x1

    const-string v2, "AC"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Chandelier"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Cooler"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Desk Lamp"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Desktop"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "DISH"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Exhaust"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Fan"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Refrigerator"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Microwave"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Mixer"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Purifier"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "Socket"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "Sound System"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "Stove"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "Table Fan"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "TV"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "Tube"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "Washing Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "Water Heater"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "CD Player"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "Iron Machine"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "Coffee Maker"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "Curtain"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "Lock"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "Sprinkler"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->switchList:[Ljava/lang/String;

    .line 115
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->mSwitchON:[I

    .line 122
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->mSwitchOFF:[I

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    .line 130
    const-string v0, ""

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->messageType:Ljava/lang/String;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    .line 136
    iput v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    .line 903
    new-instance v0, Lcom/iot/engine/LivingRoom$4;

    invoke-direct {v0, p0}, Lcom/iot/engine/LivingRoom$4;-><init>(Lcom/iot/engine/LivingRoom;)V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->messageMqtt:Landroid/content/BroadcastReceiver;

    return-void

    .line 115
    :array_0
    .array-data 4
        0x7f020156
        0x7f02014b
        0x7f02014d
        0x7f02014f
        0x7f020150
        0x7f020151
        0x7f020152
        0x7f020153
        0x7f020154
        0x7f02015b
        0x7f020158
        0x7f020159
        0x7f02015a
        0x7f02015c
        0x7f02015d
        0x7f02015e
        0x7f02015f
        0x7f020160
        0x7f020161
        0x7f020162
        0x7f020163
        0x7f02014c
        0x7f020155
        0x7f02014e
        0x7f0200c1
        0x7f020114
        0x7f02018f
    .end array-data

    .line 122
    :array_1
    .array-data 4
        0x7f020132
        0x7f020131
        0x7f020135
        0x7f020137
        0x7f020138
        0x7f020139
        0x7f02013a
        0x7f02013b
        0x7f02013c
        0x7f02013d
        0x7f02013f
        0x7f020140
        0x7f020141
        0x7f020142
        0x7f020143
        0x7f020144
        0x7f020145
        0x7f020146
        0x7f020147
        0x7f020148
        0x7f020149
        0x7f020134
        0x7f02013e
        0x7f020136
        0x7f0200c1
        0x7f020114
        0x7f020190
    .end array-data
.end method

.method private ALertDialogHideOperation()V
    .locals 8

    .prologue
    .line 445
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v6}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 447
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    iget-object v7, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    invoke-virtual {v7}, LAdapter/TryDemoSwitchAdpater;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, LAdapter/TryDemoSwitchAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 454
    .local v1, "mapList":Ljava/util/HashMap;
    :goto_0
    new-instance v0, Landroid/app/Dialog;

    invoke-direct {v0, p0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 455
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 456
    const v6, 0x7f0400ae

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 457
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v6

    const v7, 0x7f0800ed

    iput v7, v6, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 458
    const v6, 0x7f0d01b5

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 459
    .local v4, "txtCancel":Landroid/widget/TextView;
    const v6, 0x7f0d0103

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 460
    .local v3, "tvTitle":Landroid/widget/TextView;
    const v6, 0x7f0d00a4

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 461
    .local v2, "tvMessage":Landroid/widget/TextView;
    const v6, 0x7f0d01b6

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 463
    .local v5, "txtOK":Landroid/widget/TextView;
    const-string v6, "Hide Switch"

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 464
    const-string v6, "In order to hide,we need to TURN OFF selected appliance ?"

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    new-instance v6, Lcom/iot/engine/LivingRoom$2;

    invoke-direct {v6, p0, v0, v1}, Lcom/iot/engine/LivingRoom$2;-><init>(Lcom/iot/engine/LivingRoom;Landroid/app/Dialog;Ljava/util/HashMap;)V

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 473
    new-instance v6, Lcom/iot/engine/LivingRoom$3;

    invoke-direct {v6, p0, v0}, Lcom/iot/engine/LivingRoom$3;-><init>(Lcom/iot/engine/LivingRoom;Landroid/app/Dialog;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 481
    return-void

    .line 451
    .end local v0    # "dialog":Landroid/app/Dialog;
    .end local v1    # "mapList":Ljava/util/HashMap;
    .end local v2    # "tvMessage":Landroid/widget/TextView;
    .end local v3    # "tvTitle":Landroid/widget/TextView;
    .end local v4    # "txtCancel":Landroid/widget/TextView;
    .end local v5    # "txtOK":Landroid/widget/TextView;
    :cond_0
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    iget-object v7, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    invoke-virtual {v7}, LAdapter/AdapterCustomSwitch;->getPosition()I

    move-result v7

    invoke-virtual {v6, v7}, LAdapter/AdapterCustomSwitch;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .restart local v1    # "mapList":Ljava/util/HashMap;
    goto :goto_0
.end method

.method static synthetic access$000(Lcom/iot/engine/LivingRoom;)Ltyrantgit/explosionfield/ExplosionField;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->mExplosionField:Ltyrantgit/explosionfield/ExplosionField;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/iot/engine/LivingRoom;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->setArmFunction()V

    return-void
.end method

.method static synthetic access$1100(Lcom/iot/engine/LivingRoom;)Ldmax/dialog/SpotsDialog;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object v0
.end method

.method static synthetic access$1102(Lcom/iot/engine/LivingRoom;Ldmax/dialog/SpotsDialog;)Ldmax/dialog/SpotsDialog;
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p1, "x1"    # Ldmax/dialog/SpotsDialog;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/iot/engine/LivingRoom;->spotDialog:Ldmax/dialog/SpotsDialog;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/iot/engine/LivingRoom;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom;->createJSONBody(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/iot/engine/LivingRoom;Lorg/json/JSONArray;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p1, "x1"    # Lorg/json/JSONArray;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom;->createListForRoom(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$300(Lcom/iot/engine/LivingRoom;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->messageType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/iot/engine/LivingRoom;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/LivingRoom;->hideOperation(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/iot/engine/LivingRoom;)LSession/SessionManager;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1, p2}, Lcom/iot/engine/LivingRoom;->lockOperation(Ljava/util/HashMap;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/iot/engine/LivingRoom;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 84
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom;->showBlastInHome(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/iot/engine/LivingRoom;)LDatabase/DatabaseHandler;
    .locals 1
    .param p0, "x0"    # Lcom/iot/engine/LivingRoom;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    return-object v0
.end method

.method private createImageView(Ljava/lang/String;)V
    .locals 10
    .param p1, "imageName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const v9, 0x7f02016c

    const/16 v6, 0x64

    const v8, 0x7f020175

    const/16 v7, 0x50

    .line 231
    new-instance v2, Lde/hdodenhof/circleimageview/CircleImageView;

    invoke-direct {v2, p0}, Lde/hdodenhof/circleimageview/CircleImageView;-><init>(Landroid/content/Context;)V

    .line 232
    .local v2, "iv":Lde/hdodenhof/circleimageview/CircleImageView;
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderWidth(I)V

    .line 233
    const v4, 0x7f0b0083

    invoke-static {p0, v4}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v4

    invoke-virtual {v2, v4}, Lde/hdodenhof/circleimageview/CircleImageView;->setBorderColor(I)V

    .line 235
    iget v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    iget-object v5, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 236
    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSession/MyCord;

    .line 237
    .local v0, "cord":LSession/MyCord;
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v6, v6}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 238
    .local v3, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, LSession/MyCord;->getX()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 239
    invoke-virtual {v0}, LSession/MyCord;->getY()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 240
    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->rrCountScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 242
    const-string v4, "PH"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 244
    invoke-virtual {v4, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 245
    invoke-virtual {v4, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 252
    :goto_0
    iget v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    .line 273
    :goto_1
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    .line 274
    .local v1, "handler":Landroid/os/Handler;
    new-instance v4, Lcom/iot/engine/LivingRoom$1;

    invoke-direct {v4, p0, v2}, Lcom/iot/engine/LivingRoom$1;-><init>(Lcom/iot/engine/LivingRoom;Lde/hdodenhof/circleimageview/CircleImageView;)V

    const-wide/16 v6, 0x3e8

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 283
    return-void

    .line 247
    .end local v1    # "handler":Landroid/os/Handler;
    :cond_0
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 248
    invoke-virtual {v4, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 249
    invoke-virtual {v4, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_0

    .line 254
    .end local v0    # "cord":LSession/MyCord;
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_1
    const/4 v4, 0x0

    iput v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    .line 255
    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    iget v5, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LSession/MyCord;

    .line 256
    .restart local v0    # "cord":LSession/MyCord;
    const-string v4, "PH"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/squareup/picasso/Picasso;->load(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 258
    invoke-virtual {v4, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 259
    invoke-virtual {v4, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    .line 266
    :goto_2
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 267
    .restart local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-virtual {v0}, LSession/MyCord;->getX()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 268
    invoke-virtual {v0}, LSession/MyCord;->getY()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 269
    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->rrCountScreen:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 270
    iget v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/iot/engine/LivingRoom;->mNumberOfBlast:I

    goto/16 :goto_1

    .line 261
    .end local v3    # "params":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_2
    invoke-static {p0}, Lcom/squareup/picasso/Picasso;->with(Landroid/content/Context;)Lcom/squareup/picasso/Picasso;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://odoo.trynoise.com:65000/share/mklsdhufnkjf34nckjsklnckldnkkjnculsdkkcnd/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/squareup/picasso/Picasso;->load(Ljava/lang/String;)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4}, Lcom/squareup/picasso/RequestCreator;->centerCrop()Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 262
    invoke-virtual {v4, v8}, Lcom/squareup/picasso/RequestCreator;->placeholder(I)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    invoke-virtual {v4, v7, v7}, Lcom/squareup/picasso/RequestCreator;->resize(II)Lcom/squareup/picasso/RequestCreator;

    move-result-object v4

    .line 263
    invoke-virtual {v4, v2}, Lcom/squareup/picasso/RequestCreator;->into(Landroid/widget/ImageView;)V

    goto :goto_2
.end method

.method private createJSONBody(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "switchStatus"    # Ljava/lang/String;

    .prologue
    .line 997
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 999
    .local v1, "jMain":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "roomId"

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1000
    const-string v2, "onoffstatus"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1001
    const-string v2, "userId"

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1002
    const-string v2, "messageFrom"

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->messageType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
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

    .line 1003
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createListForRoom(Lorg/json/JSONArray;)V
    .locals 8
    .param p1, "resultArray"    # Lorg/json/JSONArray;

    .prologue
    .line 599
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 600
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->switchDatasTemp:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 601
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v1, v6, :cond_1

    .line 603
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 604
    .local v5, "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x0

    .line 607
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 609
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .local v3, "jsonObject":Lorg/json/JSONObject;
    :try_start_1
    const-string v6, "SwitchID"

    const-string v7, "id"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 610
    const-string v6, "SwitchName"

    const-string v7, "switchName"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 611
    const-string v6, "SwitchTypeid"

    const-string v7, "switchType"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 612
    const-string v6, "DimmerStatus"

    const-string v7, "dimmerStatus"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    const-string v6, "dimmerValue"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_0

    .line 615
    const-string v4, "0"

    .line 620
    .local v4, "mDimmer":Ljava/lang/String;
    :goto_1
    const-string v6, "DimmerValue"

    invoke-virtual {v5, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 621
    const-string v6, "SwitchStatus"

    const-string v7, "switchStatus"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 622
    const-string v6, "onImage"

    const-string v7, "onImage"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    const-string v6, "offImage"

    const-string v7, "offImage"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 624
    const-string v6, "lock"

    const-string v7, "lockStatus"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    const-string v6, "hide"

    const-string v7, "hideStatus"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    const-string v6, "switch_image_id"

    const-string v7, "switchImageId"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 627
    const-string v6, "RoomId"

    iget-object v7, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 628
    const-string v6, "RoomName"

    iget-object v7, p0, Lcom/iot/engine/LivingRoom;->mRoomName:Ljava/lang/String;

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v6, v5}, LDatabase/DatabaseHandler;->insertSwitchNew(Ljava/util/HashMap;)V

    .line 631
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object v6, p0, Lcom/iot/engine/LivingRoom;->switchDatasTemp:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object v2, v3

    .line 601
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mDimmer":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 617
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    :cond_0
    const-string v6, "dimmerValue"

    invoke-virtual {v3, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    .restart local v4    # "mDimmer":Ljava/lang/String;
    goto :goto_1

    .line 634
    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .end local v4    # "mDimmer":Ljava/lang/String;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 635
    .local v0, "e":Lorg/json/JSONException;
    :goto_3
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_2

    .line 640
    .end local v0    # "e":Lorg/json/JSONException;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v5    # "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_1
    return-void

    .line 634
    .restart local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v5    # "roomType":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "jsonObject":Lorg/json/JSONObject;
    .restart local v2    # "jsonObject":Lorg/json/JSONObject;
    goto :goto_3
.end method

.method private generateCooridinate()V
    .locals 11

    .prologue
    const/16 v10, 0x50

    const/16 v9, 0x32

    const/16 v8, 0x28

    const/16 v7, 0x3c

    const/16 v6, 0x14

    .line 194
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 195
    .local v0, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 196
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 198
    .local v1, "width":I
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    invoke-direct {v3, v9, v7}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 199
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    add-int/lit16 v4, v1, -0xc8

    invoke-direct {v3, v4, v7}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4, v8}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 201
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x3

    const/16 v5, 0xfa

    invoke-direct {v3, v4, v5}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 202
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x4

    const/16 v5, 0xa

    invoke-direct {v3, v4, v5}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, -0x64

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 205
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    invoke-direct {v3, v8, v9}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    add-int/lit16 v4, v1, -0x118

    invoke-direct {v3, v4, v10}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x4

    const/16 v5, 0xfa

    invoke-direct {v3, v4, v5}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x2

    invoke-direct {v3, v4, v10}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x3

    invoke-direct {v3, v4, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 210
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x78

    const/16 v5, 0x64

    invoke-direct {v3, v4, v5}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x4

    const/16 v5, 0x78

    invoke-direct {v3, v4, v5}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    div-int/lit8 v4, v1, 0x2

    add-int/lit8 v4, v4, 0x3c

    invoke-direct {v3, v4, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    invoke-direct {v3, v6, v6}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->cordArrayList:Ljava/util/ArrayList;

    new-instance v3, LSession/MyCord;

    const/16 v4, 0x12c

    invoke-direct {v3, v4, v7}, LSession/MyCord;-><init>(II)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    return-void
.end method

.method private getRoomData()V
    .locals 2

    .prologue
    .line 286
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 287
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 289
    const-string v1, "RoomId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    .line 290
    const-string v1, "RoomName"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->mRoomName:Ljava/lang/String;

    .line 293
    const-string v1, "NetWorkInfo"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->mNetWorkInfo:Ljava/lang/String;

    .line 298
    :cond_0
    return-void
.end method

.method private getRoomIP()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 587
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getFirstString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    .line 594
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    return-object v0

    .line 588
    :cond_1
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v1, "2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 589
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getSecondString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    goto :goto_0

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 591
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getThirdString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    goto :goto_0
.end method

.method private getSwitchListServer()V
    .locals 2

    .prologue
    .line 545
    new-instance v0, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;-><init>(Lcom/iot/engine/LivingRoom;Lcom/iot/engine/LivingRoom$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/iot/engine/LivingRoom$AsyncTaskForSwitch;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 546
    return-void
.end method

.method private getSwitchesList()V
    .locals 3

    .prologue
    .line 220
    :try_start_0
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 221
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, LDatabase/DatabaseHandler;->getSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    :goto_0
    return-void

    .line 222
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private hideOperation(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 4
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
    .line 499
    .local p1, "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 500
    .local v0, "database":LDatabase/DatabaseHandler;
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v1, "SwitchID"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2}, LDatabase/DatabaseHandler;->UpdateHideStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 501
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, LDatabase/DatabaseHandler;->getSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    .line 502
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 504
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    const-string v3, "NotificationSend"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 505
    return-void
.end method

.method private initialiseControls()V
    .locals 2

    .prologue
    .line 735
    iput-object p0, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    .line 736
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    .line 737
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->switchDatasTemp:Ljava/util/ArrayList;

    .line 738
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    .line 739
    const v0, 0x7f0d0199

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->txtCount:Landroid/widget/TextView;

    .line 740
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->txtHeading:Landroid/widget/TextView;

    .line 741
    const v0, 0x7f0d019a

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->txtM:Landroid/widget/TextView;

    .line 742
    const v0, 0x7f0d0156

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->imgBack:Landroid/widget/ImageView;

    .line 743
    const v0, 0x7f0d0157

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->imgOption:Landroid/widget/ImageView;

    .line 745
    const v0, 0x7f0d01a7

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    .line 746
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 748
    const v0, 0x7f0d01a8

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

    .line 749
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 751
    const v0, 0x7f0d0195

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->rrCountScreen:Landroid/widget/RelativeLayout;

    .line 752
    const v0, 0x7f0d0198

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->txtSafe:Landroid/widget/TextView;

    .line 754
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->imgBack:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 755
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->imgOption:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 757
    return-void
.end method

.method private lockOperation(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 3
    .param p2, "mLockStatus"    # Ljava/lang/String;
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
    .line 508
    .local p1, "mapList":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    .line 509
    .local v0, "database":LDatabase/DatabaseHandler;
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v1, "SwitchID"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v2, v1, p2}, LDatabase/DatabaseHandler;->UpdateLockFlag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, LDatabase/DatabaseHandler;->getSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    .line 511
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 512
    return-void
.end method

.method private onClickOfHideOption()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 722
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    const-string v2, "Oops you don\'t have authority to perform operation."

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 733
    :goto_0
    return-void

    .line 727
    :cond_0
    iput-boolean v3, p0, Lcom/iot/engine/LivingRoom;->backFlag:Z

    .line 728
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/iot/engine/HideList;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 729
    .local v0, "i":Landroid/content/Intent;
    const-string v1, "RoomId"

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 730
    const-string v1, "RoomName"

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onClickOfTurnOFFAppliance(Ljava/lang/String;)V
    .locals 5
    .param p1, "OprationStatus"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 688
    invoke-static {p0}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 690
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2, p1}, LDatabase/DatabaseHandler;->isAlreadyONOFF(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 691
    new-instance v1, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;-><init>(Lcom/iot/engine/LivingRoom;Lcom/iot/engine/LivingRoom$1;)V

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v4

    invoke-virtual {v1, v2}, Lcom/iot/engine/LivingRoom$AsyncTurnONAllAppliances;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 700
    :goto_0
    return-void

    .line 693
    :cond_0
    const-string v1, "0"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Switches are already OFF"

    .line 694
    .local v0, "messge":Ljava/lang/String;
    :goto_1
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 693
    .end local v0    # "messge":Ljava/lang/String;
    :cond_1
    const-string v0, "Switches are already ON"

    goto :goto_1

    .line 698
    :cond_2
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private optionDialog()V
    .locals 3

    .prologue
    .line 649
    new-instance v0, Landroid/support/v7/widget/PopupMenu;

    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->imgOption:Landroid/widget/ImageView;

    invoke-direct {v0, p0, v1}, Landroid/support/v7/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 650
    .local v0, "popupMenu":Landroid/support/v7/widget/PopupMenu;
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/support/v7/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 651
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    const v1, 0x7f0e0009

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    .line 656
    :goto_0
    invoke-virtual {v0}, Landroid/support/v7/widget/PopupMenu;->show()V

    .line 658
    return-void

    .line 654
    :cond_0
    const v1, 0x7f0e000a

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/PopupMenu;->inflate(I)V

    goto :goto_0
.end method

.method private setArmFunction()V
    .locals 2

    .prologue
    .line 186
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getArmFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->txtSafe:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    :goto_0
    return-void

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->txtSafe:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private setMoveAdapter()V
    .locals 7

    .prologue
    .line 574
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 575
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 576
    new-instance v0, LAdapter/MoveAdpater;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->mSwitchONOFFMap:Ljava/util/ArrayList;

    move-object v1, p0

    move-object v4, p0

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, LAdapter/MoveAdpater;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;LSession/OnStartDragListener;LSession/OnCustomerListChangedListener;)V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->adapterMove:LAdapter/MoveAdpater;

    .line 577
    new-instance v6, LSession/SimpleItemTouchHelperCallback;

    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->adapterMove:LAdapter/MoveAdpater;

    invoke-direct {v6, v0}, LSession/SimpleItemTouchHelperCallback;-><init>(LSession/ItemTouchHelperAdapter;)V

    .line 578
    .local v6, "callback":Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;
    new-instance v0, Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/helper/ItemTouchHelper;-><init>(Landroid/support/v7/widget/helper/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/iot/engine/LivingRoom;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    .line 579
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->attachToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 580
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->adapterMove:LAdapter/MoveAdpater;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 581
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->adapterMove:LAdapter/MoveAdpater;

    invoke-virtual {v0}, LAdapter/MoveAdpater;->notifyDataSetChanged()V

    .line 582
    return-void
.end method

.method private setToolbar()V
    .locals 2

    .prologue
    .line 705
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->txtHeading:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->mRoomName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 706
    return-void
.end method

.method private showBlastInHome(Ljava/lang/String;)V
    .locals 1
    .param p1, "stringExtra"    # Ljava/lang/String;

    .prologue
    .line 927
    :try_start_0
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom;->createImageView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 931
    :goto_0
    return-void

    .line 928
    :catch_0
    move-exception v0

    .line 929
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method private switchONOFFOpt(Ljava/util/HashMap;)V
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
    .line 488
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    const-string v0, "SwitchID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SwitchStatus"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "DimmerValue"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 490
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    invoke-virtual {v0}, LAdapter/TryDemoSwitchAdpater;->notifyDataSetChanged()V

    .line 491
    return-void
.end method


# virtual methods
.method public OnClickOfSwitchChange(Ljava/util/HashMap;)V
    .locals 0
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
    .line 485
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-direct {p0, p1}, Lcom/iot/engine/LivingRoom;->switchONOFFOpt(Ljava/util/HashMap;)V

    .line 486
    return-void
.end method

.method public OnProgressChangeListener(Ljava/util/HashMap;)V
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
    .line 494
    .local p1, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    const-string v0, "SwitchID"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "SwitchStatus"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "DimmerValue"

    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v0, v1, v2}, LDatabase/DatabaseHandler;->updateSwitchStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 495
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 497
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 709
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 719
    :goto_0
    return-void

    .line 711
    :pswitch_0
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->finish()V

    .line 712
    const v0, 0x7f050015

    const v1, 0x7f050016

    invoke-virtual {p0, v0, v1}, Lcom/iot/engine/LivingRoom;->overridePendingTransition(II)V

    goto :goto_0

    .line 715
    :pswitch_1
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->optionDialog()V

    goto :goto_0

    .line 709
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0156
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 8
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const v7, 0x7f060079

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 321
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 322
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    invoke-virtual {v4}, LAdapter/TryDemoSwitchAdpater;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, LAdapter/TryDemoSwitchAdpater;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .line 330
    .local v2, "mapList":Ljava/util/HashMap;
    :goto_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 439
    :cond_0
    :goto_1
    :pswitch_0
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    return v3

    .line 326
    .end local v2    # "mapList":Ljava/util/HashMap;
    :cond_1
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    invoke-virtual {v4}, LAdapter/AdapterCustomSwitch;->getPosition()I

    move-result v4

    invoke-virtual {v3, v4}, LAdapter/AdapterCustomSwitch;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    .restart local v2    # "mapList":Ljava/util/HashMap;
    goto :goto_0

    .line 332
    :pswitch_1
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 333
    iput-boolean v6, p0, Lcom/iot/engine/LivingRoom;->backFlag:Z

    .line 334
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iot/engine/EditSwitchOperation;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 335
    .local v1, "intentEdit":Landroid/content/Intent;
    const-string v3, "SwitchInfo"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 336
    invoke-virtual {p0, v1}, Lcom/iot/engine/LivingRoom;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 339
    .end local v1    # "intentEdit":Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 341
    :cond_3
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    const-string v4, "Oops you don\'t have authority to edit the switch."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 346
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-class v3, Lcom/iot/engine/EditSwitchOperation;

    invoke-direct {v1, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 347
    .restart local v1    # "intentEdit":Landroid/content/Intent;
    const-string v3, "SwitchInfo"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0, v1}, Lcom/iot/engine/LivingRoom;->startActivity(Landroid/content/Intent;)V

    goto :goto_1

    .line 356
    .end local v1    # "intentEdit":Landroid/content/Intent;
    :pswitch_2
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 357
    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/iot/engine/LivingRoom;->hideOperation(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    goto/16 :goto_1

    .line 362
    :cond_5
    invoke-static {p0}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 363
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 364
    :cond_6
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    const-string v4, "Oops you don\'t have authority to Hide the Switch."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 366
    :cond_7
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Hide"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 367
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->ALertDialogHideOperation()V

    .line 369
    const-string v3, "Living Room : "

    const-string v4, "Hide"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 373
    :cond_8
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 381
    :pswitch_3
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 382
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Lock"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 383
    const-string v3, "1"

    invoke-direct {p0, v2, v3}, Lcom/iot/engine/LivingRoom;->lockOperation(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 384
    const-string v3, "lock"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    invoke-virtual {p0, v2}, Lcom/iot/engine/LivingRoom;->OnClickOfSwitchChange(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 387
    :cond_9
    const-string v3, "0"

    invoke-direct {p0, v2, v3}, Lcom/iot/engine/LivingRoom;->lockOperation(Ljava/util/HashMap;Ljava/lang/String;)V

    .line 388
    const-string v3, "lock"

    const-string v4, "0"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 389
    invoke-virtual {p0, v2}, Lcom/iot/engine/LivingRoom;->OnClickOfSwitchChange(Ljava/util/HashMap;)V

    goto/16 :goto_1

    .line 394
    :cond_a
    invoke-static {p0}, LSession/NetworkConnectionInfo;->isInternetAvailable(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 395
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 396
    :cond_b
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    const-string v4, "Oops you don\'t have authority to Lock the Switch."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 399
    :cond_c
    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "Lock"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 400
    new-instance v3, Lcom/iot/engine/LivingRoom$AsyncLockOpration;

    invoke-direct {v3, p0, v2}, Lcom/iot/engine/LivingRoom$AsyncLockOpration;-><init>(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;)V

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "1"

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 401
    const-string v3, "Living Room : "

    const-string v4, "Lock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 404
    :cond_d
    new-instance v3, Lcom/iot/engine/LivingRoom$AsyncLockOpration;

    invoke-direct {v3, p0, v2}, Lcom/iot/engine/LivingRoom$AsyncLockOpration;-><init>(Lcom/iot/engine/LivingRoom;Ljava/util/HashMap;)V

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "0"

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Lcom/iot/engine/LivingRoom$AsyncLockOpration;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 405
    const-string v3, "Living Room : "

    const-string v4, "Unlock"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 409
    :cond_e
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 417
    :pswitch_4
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DemoUser"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 418
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/iot/engine/AddNewTask;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 419
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "IP"

    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->getRoomIP()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 420
    const-string v3, "SwitchInfo"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 421
    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 423
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_f
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "2"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v3}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v3

    const-string v4, "3"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 424
    :cond_10
    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->context:Landroid/content/Context;

    const-string v4, "Oops you don\'t have authority to Schedule the Switch."

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    goto/16 :goto_1

    .line 426
    :cond_11
    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/iot/engine/AddNewTask;

    invoke-direct {v0, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 427
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v3, "SwitchInfo"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 428
    invoke-virtual {p0, v0}, Lcom/iot/engine/LivingRoom;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_1

    .line 434
    .end local v0    # "intent":Landroid/content/Intent;
    :pswitch_5
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->setMoveAdapter()V

    goto/16 :goto_1

    .line 330
    nop

    :pswitch_data_0
    .packed-switch 0x7f0d0276
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 144
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 145
    const v2, 0x7f04006f

    invoke-virtual {p0, v2}, Lcom/iot/engine/LivingRoom;->setContentView(I)V

    .line 146
    new-instance v2, LDatabase/DatabaseHandler;

    invoke-direct {v2, p0}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    .line 147
    new-instance v2, LSession/SessionManager;

    invoke-direct {v2, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    .line 149
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->getRoomData()V

    .line 150
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->initialiseControls()V

    .line 170
    sget-object v2, LSession/Constants;->URL_GO:Ljava/lang/String;

    sget-object v3, LSession/Constants;->URL_GO_AWS:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "Internet"

    :goto_0
    iput-object v2, p0, Lcom/iot/engine/LivingRoom;->messageType:Ljava/lang/String;

    .line 173
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mSwitchON:[I

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 174
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 175
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    const-string v2, "ON"

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->mSwitchON:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 176
    const-string v2, "OFF"

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->mSwitchOFF:[I

    aget v3, v3, v0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mSwitchONOFFMap:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 170
    .end local v0    # "i":I
    .end local v1    # "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    :cond_0
    const-string v2, "Localhub"

    goto :goto_0

    .line 180
    .restart local v0    # "i":I
    :cond_1
    invoke-static {p0}, Ltyrantgit/explosionfield/ExplosionField;->attach2Window(Landroid/app/Activity;)Ltyrantgit/explosionfield/ExplosionField;

    move-result-object v2

    iput-object v2, p0, Lcom/iot/engine/LivingRoom;->mExplosionField:Ltyrantgit/explosionfield/ExplosionField;

    .line 181
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->generateCooridinate()V

    .line 182
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->setArmFunction()V

    .line 183
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 302
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0e0006

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 303
    const/4 v0, 0x1

    return v0
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v0, 0x1

    .line 662
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 684
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 664
    :pswitch_0
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->onClickOfHideOption()V

    goto :goto_0

    .line 667
    :pswitch_1
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 668
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    goto :goto_0

    .line 671
    :cond_0
    const-string v1, "0"

    invoke-direct {p0, v1}, Lcom/iot/engine/LivingRoom;->onClickOfTurnOFFAppliance(Ljava/lang/String;)V

    goto :goto_0

    .line 675
    :pswitch_2
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 676
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, LDatabase/DatabaseHandler;->changeRoomSwitchStatus(Ljava/lang/String;Ljava/lang/String;)V

    .line 677
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    goto :goto_0

    .line 679
    :cond_1
    const-string v1, "1"

    invoke-direct {p0, v1}, Lcom/iot/engine/LivingRoom;->onClickOfTurnOFFAppliance(Ljava/lang/String;)V

    goto :goto_0

    .line 662
    :pswitch_data_0
    .packed-switch 0x7f0d0286
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
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
    .line 762
    .local p1, "maps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 309
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 315
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 312
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 309
    :pswitch_data_0
    .packed-switch 0x7f0d0283
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 893
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onPause()V

    .line 894
    const/4 v0, 0x0

    sput-object v0, Lcom/iot/engine/LivingRoom;->thisInstance:Lcom/iot/engine/LivingRoom;

    .line 895
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->messageMqtt:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 896
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DemoUser"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/iot/engine/LivingRoom;->backFlag:Z

    if-eqz v0, :cond_0

    .line 897
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->finish()V

    .line 899
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    .line 514
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onResume()V

    .line 516
    sput-object p0, Lcom/iot/engine/LivingRoom;->thisInstance:Lcom/iot/engine/LivingRoom;

    .line 518
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->messageMqtt:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "MqttCallBack"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 519
    invoke-static {p0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->messageMqtt:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "BlastCallBack"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 521
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f050019

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 522
    .local v0, "bottomUp":Landroid/view/animation/Animation;
    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 523
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 524
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/iot/engine/LivingRoom;->backFlag:Z

    .line 525
    invoke-static {p0}, Lnet/hockeyapp/android/CrashManager;->register(Landroid/content/Context;)V

    .line 527
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->setToolbar()V

    .line 530
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->sessionManager:LSession/SessionManager;

    invoke-virtual {v1}, LSession/SessionManager;->getUSERID()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 531
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->getSwitchesList()V

    .line 532
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    .line 542
    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 543
    return-void

    .line 535
    :cond_0
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->mNetWorkInfo:Ljava/lang/String;

    const-string v2, "INTERNET"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 536
    invoke-virtual {p0}, Lcom/iot/engine/LivingRoom;->setSwitchAdapter()V

    goto :goto_0

    .line 538
    :cond_1
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->getSwitchListServer()V

    goto :goto_0
.end method

.method public onStartDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1, "viewHolder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .line 766
    iget-object v0, p0, Lcom/iot/engine/LivingRoom;->mItemTouchHelper:Landroid/support/v7/widget/helper/ItemTouchHelper;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/helper/ItemTouchHelper;->startDrag(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    .line 767
    return-void
.end method

.method public setSwitchAdapter()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 550
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitchesMove:Landroid/support/v7/widget/RecyclerView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 551
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 553
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, LDatabase/DatabaseHandler;->getSwitches(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    .line 554
    invoke-direct {p0}, Lcom/iot/engine/LivingRoom;->getRoomIP()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    .line 555
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p0}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    .line 557
    .local v0, "session":LSession/SessionManager;
    invoke-virtual {v0}, LSession/SessionManager;->getDemoUser()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DemoUser"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 558
    new-instance v1, LAdapter/TryDemoSwitchAdpater;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->mSwitchONOFFMap:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/iot/engine/LivingRoom;->IPADDRESS:Ljava/lang/String;

    invoke-direct {v1, p0, v2, v3, v4}, LAdapter/TryDemoSwitchAdpater;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    .line 559
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 560
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 561
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->adapterTry:LAdapter/TryDemoSwitchAdpater;

    invoke-virtual {v1}, LAdapter/TryDemoSwitchAdpater;->notifyDataSetChanged()V

    .line 569
    :goto_0
    invoke-virtual {p0, v5}, Lcom/iot/engine/LivingRoom;->settextCount(I)V

    .line 570
    return-void

    .line 564
    :cond_0
    new-instance v1, LAdapter/AdapterCustomSwitch;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->switchDatas:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/iot/engine/LivingRoom;->mSwitchONOFFMap:Ljava/util/ArrayList;

    invoke-direct {v1, p0, v2, v3}, LAdapter/AdapterCustomSwitch;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    iput-object v1, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    .line 565
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->lstSwitches:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 566
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->adapter:LAdapter/AdapterCustomSwitch;

    invoke-virtual {v1}, LAdapter/AdapterCustomSwitch;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public settextCount(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 642
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->db:LDatabase/DatabaseHandler;

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-virtual {v1, v2}, LDatabase/DatabaseHandler;->getSwitchRoomStatusCount(Ljava/lang/String;)I

    move-result v0

    .line 643
    .local v0, "count1":I
    const-string v1, "Room ID"

    iget-object v2, p0, Lcom/iot/engine/LivingRoom;->mRoomId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    const-string v1, "Room Appliance ON"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v1, p0, Lcom/iot/engine/LivingRoom;->txtCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 646
    return-void
.end method
