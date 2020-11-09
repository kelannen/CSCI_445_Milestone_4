.class public LAdapter/SelectSwitchesAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "SelectSwitchesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        LAdapter/SelectSwitchesAdapter$MyViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "LAdapter/SelectSwitchesAdapter$MyViewHolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SelectSwitchesAdapter"


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

.field db:LDatabase/DatabaseHandler;

.field llDimmerLayoutFlag:[Ljava/lang/String;

.field mIconArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field status:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p4, "mSwitchStatus"    # Ljava/lang/String;
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
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 46
    .local p2, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local p3, "mIconArrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 47
    iput-object p1, p0, LAdapter/SelectSwitchesAdapter;->context:Landroid/content/Context;

    .line 48
    iput-object p2, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    .line 49
    new-instance v0, LDatabase/DatabaseHandler;

    invoke-direct {v0, p1}, LDatabase/DatabaseHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter;->db:LDatabase/DatabaseHandler;

    .line 50
    iput-object p3, p0, LAdapter/SelectSwitchesAdapter;->mIconArrayList:Ljava/util/ArrayList;

    .line 51
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter;->llDimmerLayoutFlag:[Ljava/lang/String;

    .line 52
    iget-object v0, p0, LAdapter/SelectSwitchesAdapter;->llDimmerLayoutFlag:[Ljava/lang/String;

    const-string v1, "0"

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iput-object p4, p0, LAdapter/SelectSwitchesAdapter;->status:Ljava/lang/String;

    .line 54
    return-void
.end method


# virtual methods
.method public getItem()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(LAdapter/SelectSwitchesAdapter$MyViewHolder;I)V
    .locals 7
    .param p1, "holder"    # LAdapter/SelectSwitchesAdapter$MyViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/16 v5, 0x8

    .line 64
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 67
    iget-object v2, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->txtItemSwitch:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "SwitchName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    iget-object v2, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->txtItemRoom:Landroid/widget/TextView;

    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v3, "RoomName"

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v2, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->imgItemSwitch:Landroid/widget/ImageView;

    iget-object v3, p0, LAdapter/SelectSwitchesAdapter;->mIconArrayList:Ljava/util/ArrayList;

    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

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

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 72
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "selected_switch"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    .line 79
    :goto_0
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->llDimmerLayoutFlag:[Ljava/lang/String;

    aget-object v1, v1, p2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 80
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 85
    :goto_1
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v1}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 86
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->status:Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 87
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "DimmerStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 89
    iget-object v1, p0, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    const-string v2, "DimmerValue"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    div-int/lit8 v0, v1, 0x4b

    .line 90
    .local v0, "curval":I
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v1, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 101
    .end local v0    # "curval":I
    :goto_2
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    new-instance v2, LAdapter/SelectSwitchesAdapter$1;

    invoke-direct {v2, p0, p2, p1}, LAdapter/SelectSwitchesAdapter$1;-><init>(LAdapter/SelectSwitchesAdapter;ILAdapter/SelectSwitchesAdapter$MyViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/AppCompatCheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    new-instance v2, LAdapter/SelectSwitchesAdapter$2;

    invoke-direct {v2, p0, p2}, LAdapter/SelectSwitchesAdapter$2;-><init>(LAdapter/SelectSwitchesAdapter;I)V

    invoke-virtual {v1, v2}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setOnProgressChangeListener(Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar$OnProgressChangeListener;)V

    .line 183
    return-void

    .line 76
    :cond_0
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v1, v6}, Landroid/support/v7/widget/AppCompatCheckBox;->setChecked(Z)V

    goto :goto_0

    .line 82
    :cond_1
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 92
    :cond_2
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 95
    :cond_3
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 98
    :cond_4
    iget-object v1, p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 35
    check-cast p1, LAdapter/SelectSwitchesAdapter$MyViewHolder;

    invoke-virtual {p0, p1, p2}, LAdapter/SelectSwitchesAdapter;->onBindViewHolder(LAdapter/SelectSwitchesAdapter$MyViewHolder;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/SelectSwitchesAdapter$MyViewHolder;
    .locals 4
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400a1

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "itemView":Landroid/view/View;
    new-instance v1, LAdapter/SelectSwitchesAdapter$MyViewHolder;

    invoke-direct {v1, p0, v0}, LAdapter/SelectSwitchesAdapter$MyViewHolder;-><init>(LAdapter/SelectSwitchesAdapter;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 35
    invoke-virtual {p0, p1, p2}, LAdapter/SelectSwitchesAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)LAdapter/SelectSwitchesAdapter$MyViewHolder;

    move-result-object v0

    return-object v0
.end method
