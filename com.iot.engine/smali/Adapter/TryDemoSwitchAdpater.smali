.class public LAdapter/TryDemoSwitchAdpater;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "TryDemoSwitchAdpater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/TryDemoSwitchAdpater$LongOperation;,
        LAdapter/TryDemoSwitchAdpater$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/TryDemoSwitchAdpater$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final PORT:I = 0x17


# instance fields
.field private IP_ADDRESS:Ljava/lang/String;

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
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "IP_ADDRESS"    # Ljava/lang/String;
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
            ">;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "map":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v3, 0x0

    .line 75
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 62
    const-string v1, ""

    iput-object v1, p0, LAdapter/TryDemoSwitchAdpater;->IP_ADDRESS:Ljava/lang/String;

    .line 67
    const/4 v1, 0x1

    iput v1, p0, LAdapter/TryDemoSwitchAdpater;->step:I

    .line 68
    const/16 v1, 0x64

    iput v1, p0, LAdapter/TryDemoSwitchAdpater;->max:I

    .line 69
    iput v3, p0, LAdapter/TryDemoSwitchAdpater;->min:I

    .line 77
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    .line 78
    iput-object p2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    .line 79
    new-instance v1, LSession/SessionManager;

    invoke-direct {v1, p1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LAdapter/TryDemoSwitchAdpater;->session:LSession/SessionManager;

    .line 80
    new-instance v1, LDatabase/DatabaseHandler;

    invoke-direct {v1, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, LAdapter/TryDemoSwitchAdpater;->db:LDatabase/DatabaseHandler;

    .line 81
    check-cast p1, Lcom/iot/engine/LivingRoom;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater;->thisLiving:Lcom/iot/engine/LivingRoom;

    .line 82
    iput-object p3, p0, LAdapter/TryDemoSwitchAdpater;->switchONFF:Ljava/util/ArrayList;

    .line 83
    iput-object p4, p0, LAdapter/TryDemoSwitchAdpater;->IP_ADDRESS:Ljava/lang/String;

    .line 84
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p0}, LAdapter/TryDemoSwitchAdpater;->getItemCount()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, LAdapter/TryDemoSwitchAdpater;->mSbStates:Ljava/util/List;

    .line 85
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, LAdapter/TryDemoSwitchAdpater;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 86
    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater;->mSbStates:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 85
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    return-void
.end method

.method static synthetic access$000(LAdapter/TryDemoSwitchAdpater;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # LAdapter/TryDemoSwitchAdpater;

    .prologue
    .line 59
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater;->mSbStates:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(LAdapter/TryDemoSwitchAdpater;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # LAdapter/TryDemoSwitchAdpater;

    .prologue
    .line 59
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater;->IP_ADDRESS:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(LAdapter/TryDemoSwitchAdpater;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LAdapter/TryDemoSwitchAdpater;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Ljava/lang/String;

    .prologue
    .line 59
    invoke-direct {p0, p1, p2, p3}, LAdapter/TryDemoSwitchAdpater;->insertRecent(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(LAdapter/TryDemoSwitchAdpater;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # LAdapter/TryDemoSwitchAdpater;
    .param p1, "x1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1}, LAdapter/TryDemoSwitchAdpater;->setSwitchOn(Ljava/lang/String;)V

    return-void
.end method

.method private insertRecent(ILjava/lang/String;Ljava/lang/String;)V
    .locals 10
    .param p1, "position"    # I
    .param p2, "mStatus"    # Ljava/lang/String;
    .param p3, "IPAddress"    # Ljava/lang/String;

    .prologue
    .line 370
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 372
    .local v0, "calander":Ljava/util/Calendar;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v7, "MM/dd/yyyy HH:mm:ss"

    invoke-direct {v4, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 373
    .local v4, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v6

    .line 375
    .local v6, "time":Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 376
    .local v5, "switcch":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v8, "SwitchID"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "SwitchID"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 377
    const-string v8, "SwitchName"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "SwitchName"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    const-string v8, "SwitchTypeid"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "SwitchTypeid"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 379
    const-string v7, "SwitchStatus"

    invoke-virtual {v5, v7, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    const-string v8, "RoomId"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "RoomId"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    const-string v8, "DimmerStatus"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "DimmerStatus"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string v8, "DimmerValue"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "DimmerValue"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 383
    const-string v8, "RoomName"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "RoomName"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const-string v8, "switch_image_id"

    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v7, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    const-string v9, "switch_image_id"

    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    const-string v7, "Time"

    invoke-virtual {v5, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 386
    const-string v7, "IP"

    invoke-virtual {v5, v7, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v7, "yyyy-MM-dd HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v8

    invoke-direct {v2, v7, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 389
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 390
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 391
    .local v3, "formattedDate":Ljava/lang/String;
    const-string v7, "Createdby"

    invoke-virtual {v5, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    iget-object v7, p0, LAdapter/TryDemoSwitchAdpater;->db:LDatabase/DatabaseHandler;

    invoke-virtual {v7, v5}, LDatabase/DatabaseHandler;->insertRecentSwitch(Ljava/util/HashMap;)V

    .line 394
    return-void
.end method

.method private setSwitchOn(Ljava/lang/String;)V
    .locals 8
    .param p1, "connection"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 340
    const/4 v4, 0x0

    .line 341
    .local v4, "pingSocket":Ljava/net/Socket;
    const/4 v2, 0x0

    .line 342
    .local v2, "out":Ljava/io/PrintWriter;
    const/4 v1, 0x0

    .line 345
    .local v1, "in":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v5, Ljava/net/Socket;

    iget-object v6, p0, LAdapter/TryDemoSwitchAdpater;->IP_ADDRESS:Ljava/lang/String;

    const/16 v7, 0x17

    invoke-direct {v5, v6, v7}, Ljava/net/Socket;-><init>(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 346
    .end local v4    # "pingSocket":Ljava/net/Socket;
    .local v5, "pingSocket":Ljava/net/Socket;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    invoke-virtual {v5}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {v3, v6, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;Z)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 358
    .end local v2    # "out":Ljava/io/PrintWriter;
    .local v3, "out":Ljava/io/PrintWriter;
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 359
    const-string v6, "Success "

    invoke-static {v6, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V

    .line 362
    invoke-virtual {v5}, Ljava/net/Socket;->close()V

    move-object v2, v3

    .end local v3    # "out":Ljava/io/PrintWriter;
    .restart local v2    # "out":Ljava/io/PrintWriter;
    move-object v4, v5

    .line 364
    .end local v5    # "pingSocket":Ljava/net/Socket;
    .restart local v4    # "pingSocket":Ljava/net/Socket;
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    iget-object v6, p0, LAdapter/TryDemoSwitchAdpater;->context:Landroid/content/Context;

    check-cast v6, Landroid/app/Activity;

    new-instance v7, LAdapter/TryDemoSwitchAdpater$5;

    invoke-direct {v7, p0}, LAdapter/TryDemoSwitchAdpater$5;-><init>(LAdapter/TryDemoSwitchAdpater;)V

    invoke-virtual {v6, v7}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 348
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "pingSocket":Ljava/net/Socket;
    .restart local v5    # "pingSocket":Ljava/net/Socket;
    :catch_1
    move-exception v0

    move-object v4, v5

    .end local v5    # "pingSocket":Ljava/net/Socket;
    .restart local v4    # "pingSocket":Ljava/net/Socket;
    goto :goto_1
.end method


# virtual methods
.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 238
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 228
    int-to-long v0, p1

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .prologue
    .line 287
    iget v0, p0, LAdapter/TryDemoSwitchAdpater;->mPosition:I

    return v0
.end method

.method public onBindViewHolder(LAdapter/TryDemoSwitchAdpater$MyViewHolder;I)V
    .locals 8
    .param p1, "holder"    # LAdapter/TryDemoSwitchAdpater$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v7, 0x1

    const/16 v5, 0x8

    const/4 v6, 0x0

    .line 99
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 102
    iget-object v3, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->tvSwitchName:Landroid/widget/TextView;

    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "SwitchName"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 103
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    .line 104
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 105
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 106
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 107
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 108
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    const v3, 0x7f020166

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 109
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 143
    :goto_0
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    if-eqz v2, :cond_4

    .line 144
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 145
    iget-object v3, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v4, p0, LAdapter/TryDemoSwitchAdpater;->switchONFF:Ljava/util/ArrayList;

    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    .line 151
    :goto_1
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    if-eqz v2, :cond_5

    .line 152
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 157
    :goto_2
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->session:LSession/SessionManager;

    invoke-virtual {v2}, LSession/SessionManager;->getUserType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "2"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 158
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 164
    :goto_3
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    new-instance v3, LAdapter/TryDemoSwitchAdpater$1;

    invoke-direct {v3, p0, p2}, LAdapter/TryDemoSwitchAdpater$1;-><init>(LAdapter/TryDemoSwitchAdpater;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 181
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    new-instance v3, LAdapter/TryDemoSwitchAdpater$2;

    invoke-direct {v3, p0, p2}, LAdapter/TryDemoSwitchAdpater$2;-><init>(LAdapter/TryDemoSwitchAdpater;I)V

    invoke-virtual {v2, v3}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 209
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llMainScreen:Landroid/widget/LinearLayout;

    new-instance v3, LAdapter/TryDemoSwitchAdpater$3;

    invoke-direct {v3, p0, p1}, LAdapter/TryDemoSwitchAdpater$3;-><init>(LAdapter/TryDemoSwitchAdpater;LAdapter/TryDemoSwitchAdpater$MyViewHolder;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 217
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    new-instance v3, LAdapter/TryDemoSwitchAdpater$4;

    invoke-direct {v3, p0, p2}, LAdapter/TryDemoSwitchAdpater$4;-><init>(LAdapter/TryDemoSwitchAdpater;I)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 224
    return-void

    .line 111
    :cond_0
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    .line 112
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 113
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 114
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 115
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 116
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    const v3, 0x7f020197

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 117
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    goto/16 :goto_0

    .line 118
    :cond_1
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    if-eqz v2, :cond_2

    .line 119
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v5}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 122
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 123
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    goto/16 :goto_0

    .line 124
    :cond_2
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    if-eqz v2, :cond_3

    .line 125
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 127
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 129
    :try_start_0
    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    .line 130
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

    .line 131
    .local v0, "curval":I
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    .end local v0    # "curval":I
    .end local v1    # "dimmervalueset":I
    :goto_4
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v7}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 134
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 136
    :cond_3
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v6}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setIndicatorPopupEnabled(Z)V

    .line 137
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->layoutDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 138
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->llCurtain:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 139
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v6}, Landroid/support/v7/widget/SwitchCompat;->setVisibility(I)V

    .line 140
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgLockImage:Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 147
    :cond_4
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->btnSwitchButton:Landroid/support/v7/widget/SwitchCompat;

    invoke-virtual {v2, v7}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 148
    iget-object v3, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->imgSwitchImage:Landroid/widget/ImageView;

    iget-object v4, p0, LAdapter/TryDemoSwitchAdpater;->switchONFF:Ljava/util/ArrayList;

    iget-object v2, p0, LAdapter/TryDemoSwitchAdpater;->switchDatas:Ljava/util/ArrayList;

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

    .line 154
    :cond_5
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->lock:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_2

    .line 161
    :cond_6
    iget-object v2, p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->lock:Landroid/widget/ImageView;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/16 :goto_3

    .line 132
    :catch_0
    move-exception v2

    goto :goto_4
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 59
    check-cast p1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/TryDemoSwitchAdpater;->onBindViewHolder(LAdapter/TryDemoSwitchAdpater$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/TryDemoSwitchAdpater$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 93
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400b0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 94
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/TryDemoSwitchAdpater$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/TryDemoSwitchAdpater$MyViewHolder;-><init>(LAdapter/TryDemoSwitchAdpater;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 59
    invoke-virtual {p0, p1, p2}, LAdapter/TryDemoSwitchAdpater;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/TryDemoSwitchAdpater$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public setPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 291
    iput p1, p0, LAdapter/TryDemoSwitchAdpater;->mPosition:I

    .line 292
    return-void
.end method
