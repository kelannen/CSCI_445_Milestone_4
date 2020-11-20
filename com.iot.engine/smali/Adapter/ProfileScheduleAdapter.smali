.class public LAdapter/ProfileScheduleAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ProfileScheduleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/ProfileScheduleAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/ProfileScheduleAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


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

.field listner:LSession/IOnClickOfScheduleList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;LSession/IOnClickOfScheduleList;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "listner"    # LSession/IOnClickOfScheduleList;
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
            "LSession/IOnClickOfScheduleList;",
            ")V"
        }
    .end annotation

    .prologue
    .line 36
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 33
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

    .line 37
    iput-object p1, p0, LAdapter/ProfileScheduleAdapter;->context:Landroid/content/Context;

    .line 38
    iput-object p2, p0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

    .line 39
    iput-object p3, p0, LAdapter/ProfileScheduleAdapter;->listner:LSession/IOnClickOfScheduleList;

    .line 40
    return-void
.end method

.method private hours12Date(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "time"    # Ljava/lang/String;

    .prologue
    .line 92
    :try_start_0
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v5, "HH:mm"

    invoke-direct {v3, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 93
    .local v3, "f1":Ljava/text/DateFormat;
    invoke-virtual {v3, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 94
    .local v0, "d":Ljava/util/Date;
    new-instance v4, Ljava/text/SimpleDateFormat;

    const-string v5, "hh:mm aa"

    invoke-direct {v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 95
    .local v4, "f2":Ljava/text/DateFormat;
    invoke-virtual {v4, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "date":Ljava/lang/String;
    const-string v5, "Time"

    invoke-static {v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    .end local v0    # "d":Ljava/util/Date;
    .end local v1    # "date":Ljava/lang/String;
    .end local v3    # "f1":Ljava/text/DateFormat;
    .end local v4    # "f2":Ljava/text/DateFormat;
    :goto_0
    return-object v1

    .line 98
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, p1

    .line 100
    goto :goto_0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/ProfileScheduleAdapter$MyViewHolder;I)V
    .locals 6
    .param p1, "holder"    # LAdapter/ProfileScheduleAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 51
    iget-object v3, p1, LAdapter/ProfileScheduleAdapter$MyViewHolder;->tvProfileName:Landroid/widget/TextView;

    iget-object v2, p0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v4, "profile_name"

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    iget-object v2, p0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

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

    if-eqz v2, :cond_0

    const-string v1, "ON"

    .line 54
    .local v1, "onoff":Ljava/lang/String;
    :goto_0
    iget-object v2, p1, LAdapter/ProfileScheduleAdapter$MyViewHolder;->txtSwitchStatus:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    iget-object v2, p0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    const-string v3, "Schedule_dates"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 57
    .local v0, "dateTime":[Ljava/lang/String;
    iget-object v2, p1, LAdapter/ProfileScheduleAdapter$MyViewHolder;->txtTime:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x5

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, LAdapter/ProfileScheduleAdapter;->hours12Date(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    iget-object v2, p1, LAdapter/ProfileScheduleAdapter$MyViewHolder;->txtDate:Landroid/widget/TextView;

    aget-object v3, v0, v5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, p1, LAdapter/ProfileScheduleAdapter$MyViewHolder;->mLinear:Landroid/widget/LinearLayout;

    new-instance v3, LAdapter/ProfileScheduleAdapter$1;

    invoke-direct {v3, p0, p2}, LAdapter/ProfileScheduleAdapter$1;-><init>(LAdapter/ProfileScheduleAdapter;I)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    return-void

    .line 53
    .end local v0    # "dateTime":[Ljava/lang/String;
    .end local v1    # "onoff":Ljava/lang/String;
    :cond_0
    const-string v1, "OFF"

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, LAdapter/ProfileScheduleAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/ProfileScheduleAdapter;->onBindViewHolder(LAdapter/ProfileScheduleAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/ProfileScheduleAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 44
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04009a

    const/4 v3, 0x0

    .line 45
    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/ProfileScheduleAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/ProfileScheduleAdapter$MyViewHolder;-><init>(LAdapter/ProfileScheduleAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 30
    invoke-virtual {p0, p1, p2}, LAdapter/ProfileScheduleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/ProfileScheduleAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
