.class public LAdapter/SchedularAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SchedularAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/SchedularAdapter$AsyncDeleteScheduleTask;,
        LAdapter/SchedularAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/SchedularAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SchedularAdapter"


# instance fields
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

.field context:Landroid/content/Context;

.field mPosition:I

.field mRoomName:Ljava/lang/String;

.field private pDialog:Landroid/app/ProgressDialog;

.field session:LSession/SessionManager;

.field thisInstance:Lcom/iot/engine/AddNewTask;

.field thisScheduleFlag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "thisScheduleFlag"    # Ljava/lang/String;
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 64
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    .line 65
    iput-object p1, p0, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    .line 66
    iput-object p3, p0, LAdapter/SchedularAdapter;->thisScheduleFlag:Ljava/lang/String;

    .line 67
    new-instance v0, LSession/SessionManager;

    invoke-direct {v0, p1}, LSession/SessionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/SchedularAdapter;->session:LSession/SessionManager;

    .line 69
    const-string v0, "SCHEDULE"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    .end local p1    # "context":Landroid/content/Context;
    :goto_0
    iput-object p2, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    .line 77
    return-void

    .line 72
    .restart local p1    # "context":Landroid/content/Context;
    :cond_0
    check-cast p1, Lcom/iot/engine/AddNewTask;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, LAdapter/SchedularAdapter;->thisInstance:Lcom/iot/engine/AddNewTask;

    goto :goto_0
.end method

.method static synthetic access$000(LAdapter/SchedularAdapter;Ljava/util/HashMap;I)V
    .locals 0
    .param p0, "x0"    # LAdapter/SchedularAdapter;
    .param p1, "x1"    # Ljava/util/HashMap;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, LAdapter/SchedularAdapter;->alertDialogDelete(Ljava/util/HashMap;I)V

    return-void
.end method

.method static synthetic access$100(LAdapter/SchedularAdapter;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # LAdapter/SchedularAdapter;

    .prologue
    .line 51
    iget-object v0, p0, LAdapter/SchedularAdapter;->pDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$102(LAdapter/SchedularAdapter;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # LAdapter/SchedularAdapter;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 51
    iput-object p1, p0, LAdapter/SchedularAdapter;->pDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method private alertDialogDelete(Ljava/util/HashMap;I)V
    .locals 6
    .param p2, "mPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 187
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/app/Dialog;

    iget-object v5, p0, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v5}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 188
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 189
    const v5, 0x7f0400ae

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->setContentView(I)V

    .line 191
    const v5, 0x7f0d01b5

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 192
    .local v3, "txtCancel":Landroid/widget/TextView;
    const v5, 0x7f0d01b6

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 193
    .local v4, "txtDelete":Landroid/widget/TextView;
    const v5, 0x7f0d00a4

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 195
    .local v1, "tvMessage":Landroid/widget/TextView;
    const v5, 0x7f0d0103

    invoke-virtual {v0, v5}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 197
    .local v2, "tvTitle":Landroid/widget/TextView;
    const-string v5, "Delete Schedule"

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 198
    const-string v5, "Delete"

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    const-string v5, "Are you sure you want to delete?"

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    new-instance v5, LAdapter/SchedularAdapter$3;

    invoke-direct {v5, p0, p2, p1, v0}, LAdapter/SchedularAdapter$3;-><init>(LAdapter/SchedularAdapter;ILjava/util/HashMap;Landroid/app/Dialog;)V

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    new-instance v5, LAdapter/SchedularAdapter$4;

    invoke-direct {v5, p0, v0}, LAdapter/SchedularAdapter$4;-><init>(LAdapter/SchedularAdapter;Landroid/app/Dialog;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 216
    return-void
.end method

.method private hours12Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 118
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 119
    .local v3, "f1":Ljava/text/DateFormat;
    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 120
    .local v0, "d":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm aa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 121
    .local v4, "f2":Ljava/text/DateFormat;
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 122
    .local v1, "date":Ljava/lang/String;
    const-string v5, "Time"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "f1":Ljava/text/DateFormat;
    .end local v4    # "f2":Ljava/text/DateFormat;
    :goto_0
    return-object v1

    .line 124
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, p1

    .line 126
    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/SchedularAdapter$MyViewHolder;I)V
    .locals 4
    .param p1, "holder"    # LAdapter/SchedularAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "RoomName"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, LAdapter/SchedularAdapter;->mRoomName:Ljava/lang/String;

    .line 91
    iget-object v1, p1, LAdapter/SchedularAdapter$MyViewHolder;->txtSwitchNameStatus:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v3, "SwitchName"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, LAdapter/SchedularAdapter;->mRoomName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v1, "SwitchStatus"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p1, LAdapter/SchedularAdapter$MyViewHolder;->txtSwitchStatus:Landroid/widget/TextView;

    const-string v1, "Turn ON"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    :goto_0
    iget-object v1, p1, LAdapter/SchedularAdapter$MyViewHolder;->txtTime:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "Time"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, LAdapter/SchedularAdapter;->hours12Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v1, p1, LAdapter/SchedularAdapter$MyViewHolder;->txtDate:Landroid/widget/TextView;

    iget-object v0, p0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v2, "Schedule_dates"

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    iget-object v0, p1, LAdapter/SchedularAdapter$MyViewHolder;->mLinear:Landroid/widget/LinearLayout;

    new-instance v1, LAdapter/SchedularAdapter$1;

    invoke-direct {v1, p0, p2}, LAdapter/SchedularAdapter$1;-><init>(LAdapter/SchedularAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 113
    return-void

    .line 96
    :cond_0
    iget-object v0, p1, LAdapter/SchedularAdapter$MyViewHolder;->txtSwitchStatus:Landroid/widget/TextView;

    const-string v1, "Turn OFF"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 51
    check-cast p1, LAdapter/SchedularAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/SchedularAdapter;->onBindViewHolder(LAdapter/SchedularAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/SchedularAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 81
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009a

    const/4 v3, 0x0

    .line 82
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 83
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/SchedularAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/SchedularAdapter$MyViewHolder;-><init>(LAdapter/SchedularAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 51
    invoke-virtual {p0, p1, p2}, LAdapter/SchedularAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/SchedularAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public showDialog(Ljava/util/HashMap;I)V
    .locals 4
    .param p2, "mPosition"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string v3, "Edit"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "Delete"

    aput-object v3, v1, v2

    .line 151
    .local v1, "strArray":[Ljava/lang/CharSequence;
    new-instance v0, Landroid/support/v7/app/AlertDialog$Builder;

    iget-object v2, p0, LAdapter/SchedularAdapter;->context:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/support/v7/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 152
    .local v0, "alertDialogBuilder":Landroid/support/v7/app/AlertDialog$Builder;
    new-instance v2, LAdapter/SchedularAdapter$2;

    invoke-direct {v2, p0, p1, p2}, LAdapter/SchedularAdapter$2;-><init>(LAdapter/SchedularAdapter;Ljava/util/HashMap;I)V

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/support/v7/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v0}, Landroid/support/v7/app/AlertDialog$Builder;->show()Landroid/support/v7/app/AlertDialog;

    .line 184
    return-void
.end method
