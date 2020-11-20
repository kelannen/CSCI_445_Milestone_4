.class public LAdapter/AdapterCustomSwitch;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AdapterCustomSwitch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/AdapterCustomSwitch$ChangeGoColorStatusTask;,
        LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;,
        LAdapter/AdapterCustomSwitch$SwitchOnOffAsyncTask;,
        LAdapter/AdapterCustomSwitch$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/AdapterCustomSwitch$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "AdapterCustomSwitch"


# instance fields
.field context:Landroid/content/Context;

.field db:LDatabase/DatabaseHandler;

.field private mPosition:I

.field private mSbStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field max:I

.field min:I

.field session:LSession/SessionManager;

.field step:I

.field switchDatas:Ljava/util/ArrayList;
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

.field private switchONFF:Ljava/util/ArrayList;
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

.field thisLiving:Lcom/iot/engine/LivingRoom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
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
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 82
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 73
    const/4 v1, 0x1

    iput v1, p0, LAdapter/AdapterCustomSwitch;->step:I

    .line 74
    const/16 v1, 0x64

    iput v1, p0, LAdapter/AdapterCustomSwitch;->max:I

    .line 75
    iput v3, p0, LAdapter/AdapterCustomSwitch;->min:I

    .line 84
    iput-object p1, p0, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    .line 85
    iput-object p2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    .line 86
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    .line 87
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-direct {v1, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    .line 88
    check-cast p1, Lcom/iot/engine/LivingRoom;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, LAdapter/AdapterCustomSwitch;->thisLiving:Lcom/iot/engine/LivingRoom;

    .line 89
    iput-object p3, p0, LAdapter/AdapterCustomSwitch;->switchONFF:Ljava/util/ArrayList;

    .line 90
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, LAdapter/AdapterCustomSwitch;->getItemCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LAdapter/AdapterCustomSwitch;->mSbStates:Ljava/util/List;

    .line 91
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, LAdapter/AdapterCustomSwitch;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 92
    iget-object v1, p0, LAdapter/AdapterCustomSwitch;->mSbStates:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 94
    :cond_0
    return-void
.end method

.method private AlertChangePasscode()V
    .locals 6

    .prologue
    .line 353
    new-instance v2, Landroid/app/Dialog;

    iget-object v5, p0, LAdapter/AdapterCustomSwitch;->context:Landroid/content/Context;

    invoke-direct {v2, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 355
    .local v2, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 356
    const v5, 0x7f04004e

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 357
    const v5, 0x7f0d00a5

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 358
    .local v1, "btnok":Landroid/widget/TextView;
    const v5, 0x7f0d00d7

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 359
    .local v0, "btncancel":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 361
    .local v4, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d0131

    invoke-virtual {v2, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/EditText;

    .line 364
    .local v3, "edtPasscode":Landroid/widget/EditText;
    new-instance v5, LAdapter/AdapterCustomSwitch$8;

    invoke-direct {v5, p0, v3, v2}, LAdapter/AdapterCustomSwitch$8;-><init>(LAdapter/AdapterCustomSwitch;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 387
    new-instance v5, LAdapter/AdapterCustomSwitch$9;

    invoke-direct {v5, p0, v2}, LAdapter/AdapterCustomSwitch$9;-><init>(LAdapter/AdapterCustomSwitch;Landroid/app/Dialog;)V

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 393
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 395
    return-void
.end method

.method static synthetic access$000(LAdapter/AdapterCustomSwitch;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 67
    iget-object v0, p0, LAdapter/AdapterCustomSwitch;->mSbStates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/AdapterCustomSwitch;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 67
    iget-object v0, p0, LAdapter/AdapterCustomSwitch;->switchONFF:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(LAdapter/AdapterCustomSwitch;)V
    .locals 0
    .param p0, "x0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 67
    invoke-direct {p0}, LAdapter/AdapterCustomSwitch;->AlertChangePasscode()V

    return-void
.end method

.method static synthetic access$500(LAdapter/AdapterCustomSwitch;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LAdapter/AdapterCustomSwitch;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, LAdapter/AdapterCustomSwitch;->insertRecent(ILjava/lang/String;)V

    return-void
.end method

.method private insertRecent(ILjava/lang/String;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "mStatus"    # Ljava/lang/String;

    .prologue
    .line 592
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 594
    .local v0, "calander":Ljava/util/Calendar;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 595
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 597
    .local v6, "time":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v5, "switcch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "SwitchID"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "SwitchID"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    const-string v8, "SwitchName"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "SwitchName"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v8, "SwitchTypeid"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "SwitchTypeid"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    const-string v7, "SwitchStatus"

    invoke-virtual {v5, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 602
    const-string v8, "RoomId"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "RoomId"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v8, "DimmerStatus"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "DimmerStatus"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    const-string v8, "DimmerValue"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "DimmerValue"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    const-string v8, "RoomName"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "RoomName"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 606
    const-string v8, "switch_image_id"

    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "switch_image_id"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 607
    const-string v7, "Time"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 610
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 611
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 612
    .local v3, "formattedDate":Ljava/lang/String;
    const-string v7, "Createdby"

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 614
    iget-object v7, p0, LAdapter/AdapterCustomSwitch;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v7, v5}, LDatabase/DatabaseHandler;->insertRecentSwitch(Ljava/util/HashMap;)V

    .line 616
    return-void
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 409
    iget-object v0, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 399
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 462
    iget v0, p0, LAdapter/AdapterCustomSwitch;->mPosition:I

    return v0
.end method

.method public onBindViewHolder(LAdapter/AdapterCustomSwitch$MyViewHolder;I)V
    .locals 9
    .param p1, "holder"    # LAdapter/AdapterCustomSwitch$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const v8, 0x7f020169

    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 103
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 106
    iget-object v3, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "SwitchName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "DimmerStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "5"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 113
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 114
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    const v3, 0x7f020166

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 115
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 162
    :goto_0
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "SwitchStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 163
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 164
    iget-object v3, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v4, p0, LAdapter/AdapterCustomSwitch;->switchONFF:Ljava/util/ArrayList;

    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "switch_image_id"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "OFF"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 170
    :goto_1
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "lock"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 171
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 176
    :goto_2
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 177
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 183
    :goto_3
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    new-instance v3, LAdapter/AdapterCustomSwitch$1;

    invoke-direct {v3, p0, p2, p1}, LAdapter/AdapterCustomSwitch$1;-><init>(LAdapter/AdapterCustomSwitch;ILAdapter/AdapterCustomSwitch$MyViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 231
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    new-instance v3, LAdapter/AdapterCustomSwitch$2;

    invoke-direct {v3, p0, p2, p1}, LAdapter/AdapterCustomSwitch$2;-><init>(LAdapter/AdapterCustomSwitch;ILAdapter/AdapterCustomSwitch$MyViewHolder;)V

    invoke-virtual {v2, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 282
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->llMainScreen:Landroid/widget/LinearLayout;

    new-instance v3, LAdapter/AdapterCustomSwitch$3;

    invoke-direct {v3, p0, p1}, LAdapter/AdapterCustomSwitch$3;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$MyViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 300
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgForward:Landroid/widget/ImageView;

    new-instance v3, LAdapter/AdapterCustomSwitch$4;

    invoke-direct {v3, p0, p1, p2}, LAdapter/AdapterCustomSwitch$4;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$MyViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 310
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgBackward:Landroid/widget/ImageView;

    new-instance v3, LAdapter/AdapterCustomSwitch$5;

    invoke-direct {v3, p0, p1, p2}, LAdapter/AdapterCustomSwitch$5;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$MyViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgPause:Landroid/widget/ImageView;

    new-instance v3, LAdapter/AdapterCustomSwitch$6;

    invoke-direct {v3, p0, p1, p2}, LAdapter/AdapterCustomSwitch$6;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$MyViewHolder;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 332
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    new-instance v3, LAdapter/AdapterCustomSwitch$7;

    invoke-direct {v3, p0, p2}, LAdapter/AdapterCustomSwitch$7;-><init>(LAdapter/AdapterCustomSwitch;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 349
    return-void

    .line 117
    :cond_0
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "DimmerStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "3"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 118
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 119
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 121
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 122
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 123
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    goto/16 :goto_0

    .line 125
    :cond_1
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "DimmerStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 127
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 129
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 130
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 131
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 133
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "SwitchStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 134
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgBackward:Landroid/widget/ImageView;

    const v3, 0x7f020165

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 135
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgForward:Landroid/widget/ImageView;

    const v3, 0x7f020091

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 136
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgPause:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 138
    :cond_2
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgForward:Landroid/widget/ImageView;

    const v3, 0x7f020092

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 139
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgPause:Landroid/widget/ImageView;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 140
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgBackward:Landroid/widget/ImageView;

    const v3, 0x7f020164

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_0

    .line 143
    :cond_3
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "DimmerStatus"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 144
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 145
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 146
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 148
    :try_start_0
    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "DimmerValue"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 149
    .local v1, "dimmervalueset":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    mul-int/lit8 v3, v1, 0x64

    div-int/lit8 v3, v3, 0x4b

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 150
    .local v0, "curval":I
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "curval":I
    .end local v1    # "dimmervalueset":I
    :goto_4
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v7}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 153
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 155
    :cond_4
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 156
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 157
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 158
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 159
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 166
    :cond_5
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 167
    iget-object v3, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v4, p0, LAdapter/AdapterCustomSwitch;->switchONFF:Ljava/util/ArrayList;

    iget-object v2, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v5, "switch_image_id"

    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "ON"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 173
    :cond_6
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->lock:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 180
    :cond_7
    iget-object v2, p1, LAdapter/AdapterCustomSwitch$MyViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 151
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 67
    check-cast p1, LAdapter/AdapterCustomSwitch$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomSwitch;->onBindViewHolder(LAdapter/AdapterCustomSwitch$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/AdapterCustomSwitch$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 96
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 97
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/AdapterCustomSwitch$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/AdapterCustomSwitch$MyViewHolder;-><init>(LAdapter/AdapterCustomSwitch;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomSwitch;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/AdapterCustomSwitch$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public refreshSwitchView(Ljava/util/ArrayList;)V
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
    .line 470
    .local p1, "switchDataInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    iput-object p1, p0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    .line 471
    invoke-virtual {p0}, LAdapter/AdapterCustomSwitch;->notifyDataSetChanged()V

    .line 472
    return-void
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 466
    iput p1, p0, LAdapter/AdapterCustomSwitch;->mPosition:I

    .line 467
    return-void
.end method
