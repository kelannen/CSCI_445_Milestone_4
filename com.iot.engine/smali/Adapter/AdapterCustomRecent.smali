.class public LAdapter/AdapterCustomRecent;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "AdapterCustomRecent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/AdapterCustomRecent$SwitchOnOffAsyncTask;,
        LAdapter/AdapterCustomRecent$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/AdapterCustomRecent$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TABLE_SWITCHES:Ljava/lang/String; = "Switches"

.field private static inflater:Landroid/view/LayoutInflater;

.field public static onSwitchCount:I


# instance fields
.field cnt:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field db:LDatabase/DatabaseHandler;

.field private flag:Z

.field imageId:[I

.field llLinear:Landroid/widget/LinearLayout;

.field private mCheckedState:[Z

.field result:[Ljava/lang/String;

.field roomid:Ljava/lang/String;

.field sp:LSession/SessionManager;

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

.field switchONOFFImage:Ljava/util/ArrayList;
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

.field thisInstance:LFragments/Recent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x0

    sput-object v0, LAdapter/AdapterCustomRecent;->inflater:Landroid/view/LayoutInflater;

    .line 62
    const/4 v0, 0x0

    sput v0, LAdapter/AdapterCustomRecent;->onSwitchCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;LFragments/Recent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "recent"    # LFragments/Recent;
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
            "LFragments/Recent;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "switchDatas":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "switchONOFFImage":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .line 66
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 56
    iput-boolean v1, p0, LAdapter/AdapterCustomRecent;->flag:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, LAdapter/AdapterCustomRecent;->roomid:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/AdapterCustomRecent;->cnt:Ljava/util/ArrayList;

    .line 68
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/AdapterCustomRecent;->sp:LSession/SessionManager;

    .line 69
    iput-boolean v1, p0, LAdapter/AdapterCustomRecent;->flag:Z

    .line 70
    iput-object p2, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    .line 71
    iput-object p1, p0, LAdapter/AdapterCustomRecent;->context:Landroid/content/Context;

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    sput-object v0, LAdapter/AdapterCustomRecent;->inflater:Landroid/view/LayoutInflater;

    .line 73
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/AdapterCustomRecent;->db:LDatabase/DatabaseHandler;

    .line 74
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Z

    iput-object v0, p0, LAdapter/AdapterCustomRecent;->mCheckedState:[Z

    .line 75
    iput-object p3, p0, LAdapter/AdapterCustomRecent;->switchONOFFImage:Ljava/util/ArrayList;

    .line 76
    sput v1, LAdapter/AdapterCustomRecent;->onSwitchCount:I

    .line 77
    iput-object p4, p0, LAdapter/AdapterCustomRecent;->thisInstance:LFragments/Recent;

    .line 78
    return-void
.end method

.method static synthetic access$000(LAdapter/AdapterCustomRecent;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # LAdapter/AdapterCustomRecent;

    .prologue
    .line 47
    iget-object v0, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method private calulateRecentTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 22
    .param p1, "startDate"    # Ljava/lang/String;

    .prologue
    .line 196
    const-string v3, ""

    .line 197
    .local v3, "compareString":Ljava/lang/String;
    const/4 v4, 0x0

    .line 198
    .local v4, "d1":Ljava/util/Date;
    const/4 v5, 0x0

    .line 199
    .local v5, "d2":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 200
    .local v2, "calander":Ljava/util/Calendar;
    new-instance v16, Ljava/text/SimpleDateFormat;

    const-string v18, "MM/dd/yyyy HH:mm:ss"

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 201
    .local v16, "formatS":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v18

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v17

    .line 204
    .local v17, "stopDate":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    .line 205
    invoke-virtual/range {v16 .. v17}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v5

    .line 208
    invoke-virtual {v5}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v20

    sub-long v6, v18, v20

    .line 210
    .local v6, "diff":J
    const-wide/16 v18, 0x3e8

    div-long v18, v6, v18

    const-wide/16 v20, 0x3c

    rem-long v14, v18, v20

    .line 211
    .local v14, "diffSeconds":J
    const-wide/32 v18, 0xea60

    div-long v18, v6, v18

    const-wide/16 v20, 0x3c

    rem-long v12, v18, v20

    .line 212
    .local v12, "diffMinutes":J
    const-wide/32 v18, 0x36ee80

    div-long v18, v6, v18

    const-wide/16 v20, 0x18

    rem-long v10, v18, v20

    .line 213
    .local v10, "diffHours":J
    const-wide/32 v18, 0x5265c00

    div-long v8, v6, v18

    .line 215
    .local v8, "diffDays":J
    const-wide/16 v18, 0x1

    cmp-long v18, v8, v18

    if-lez v18, :cond_0

    .line 216
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "day ago"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 226
    .end local v3    # "compareString":Ljava/lang/String;
    .end local v6    # "diff":J
    .end local v8    # "diffDays":J
    .end local v10    # "diffHours":J
    .end local v12    # "diffMinutes":J
    .end local v14    # "diffSeconds":J
    :goto_0
    return-object v3

    .line 217
    .restart local v3    # "compareString":Ljava/lang/String;
    .restart local v6    # "diff":J
    .restart local v8    # "diffDays":J
    .restart local v10    # "diffHours":J
    .restart local v12    # "diffMinutes":J
    .restart local v14    # "diffSeconds":J
    :cond_0
    const-wide/16 v18, 0x1

    cmp-long v18, v10, v18

    if-lez v18, :cond_1

    .line 218
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " hours "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " min ago"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 219
    :cond_1
    const-wide/16 v18, 0x1

    cmp-long v18, v12, v18

    if-lez v18, :cond_2

    .line 220
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " min ago"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 222
    :cond_2
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " sec ago"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 225
    .end local v6    # "diff":J
    .end local v8    # "diffDays":J
    .end local v10    # "diffHours":J
    .end local v12    # "diffMinutes":J
    .end local v14    # "diffSeconds":J
    :catch_0
    move-exception v18

    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 166
    int-to-long v0, p1

    return-wide v0
.end method

.method public onBindViewHolder(LAdapter/AdapterCustomRecent$MyViewHolder;I)V
    .locals 5
    .param p1, "holder"    # LAdapter/AdapterCustomRecent$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 90
    iget-object v1, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->switchSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 91
    iget-object v2, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->tvSwitcName:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "SwitchName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v2, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->tvRoomName:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "Time"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, LAdapter/AdapterCustomRecent;->calulateRecentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 94
    .local v0, "mTimeTag":Ljava/lang/String;
    iget-object v1, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->txtTime:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    iget-object v1, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "SwitchStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->switchSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 100
    iget-object v2, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterCustomRecent;->switchONOFFImage:Ljava/util/ArrayList;

    iget-object v1, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "switch_image_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "OFF"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 110
    :goto_0
    iget-object v1, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->switchSwitch:Landroid/support/v7/widget/SwitchCompat;

    new-instance v2, LAdapter/AdapterCustomRecent$1;

    invoke-direct {v2, p0, p1, p2}, LAdapter/AdapterCustomRecent$1;-><init>(LAdapter/AdapterCustomRecent;LAdapter/AdapterCustomRecent$MyViewHolder;I)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 162
    return-void

    .line 105
    :cond_0
    iget-object v1, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->switchSwitch:Landroid/support/v7/widget/SwitchCompat;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 107
    iget-object v2, p1, LAdapter/AdapterCustomRecent$MyViewHolder;->img:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/AdapterCustomRecent;->switchONOFFImage:Ljava/util/ArrayList;

    iget-object v1, p0, LAdapter/AdapterCustomRecent;->switchDatas:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v4, "switch_image_id"

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 47
    check-cast p1, LAdapter/AdapterCustomRecent$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomRecent;->onBindViewHolder(LAdapter/AdapterCustomRecent$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/AdapterCustomRecent$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040069

    const/4 v3, 0x0

    .line 83
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 84
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/AdapterCustomRecent$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/AdapterCustomRecent$MyViewHolder;-><init>(LAdapter/AdapterCustomRecent;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0, p1, p2}, LAdapter/AdapterCustomRecent;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/AdapterCustomRecent$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
