.class LAdapter/SelectSwitchesAdapter$1;
.super Ljava/lang/Object;
.source "SelectSwitchesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SelectSwitchesAdapter;->onBindViewHolder(LAdapter/SelectSwitchesAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SelectSwitchesAdapter;

.field final synthetic val$holder:LAdapter/SelectSwitchesAdapter$MyViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/SelectSwitchesAdapter;ILAdapter/SelectSwitchesAdapter$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SelectSwitchesAdapter;

    .prologue
    .line 101
    iput-object p1, p0, LAdapter/SelectSwitchesAdapter$1;->this$0:LAdapter/SelectSwitchesAdapter;

    iput p2, p0, LAdapter/SelectSwitchesAdapter$1;->val$position:I

    iput-object p3, p0, LAdapter/SelectSwitchesAdapter$1;->val$holder:LAdapter/SelectSwitchesAdapter$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    iget v3, p0, LAdapter/SelectSwitchesAdapter$1;->val$position:I

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 107
    .local v1, "mMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->val$holder:LAdapter/SelectSwitchesAdapter$MyViewHolder;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    invoke-virtual {v2}, Landroid/support/v7/widget/AppCompatCheckBox;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    const-string v2, "selected_switch"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter;->status:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 110
    const-string v2, "DimmerStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 111
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->val$holder:LAdapter/SelectSwitchesAdapter$MyViewHolder;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    const-string v2, "DimmerValue"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    div-int/lit8 v0, v2, 0x4b

    .line 113
    .local v0, "curval":I
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->val$holder:LAdapter/SelectSwitchesAdapter$MyViewHolder;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    invoke-virtual {v2, v0}, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;->setProgress(I)V

    .line 114
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter;->llDimmerLayoutFlag:[Ljava/lang/String;

    iget v3, p0, LAdapter/SelectSwitchesAdapter$1;->val$position:I

    const-string v4, "1"

    aput-object v4, v2, v3

    .line 130
    .end local v0    # "curval":I
    :cond_0
    :goto_0
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter;->arrayList:Ljava/util/ArrayList;

    iget v3, p0, LAdapter/SelectSwitchesAdapter$1;->val$position:I

    invoke-virtual {v2, v3, v1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 132
    return-void

    .line 123
    :cond_1
    const-string v2, "selected_switch"

    const-string v3, "0"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "DimmerStatus"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->val$holder:LAdapter/SelectSwitchesAdapter$MyViewHolder;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 126
    iget-object v2, p0, LAdapter/SelectSwitchesAdapter$1;->this$0:LAdapter/SelectSwitchesAdapter;

    iget-object v2, v2, LAdapter/SelectSwitchesAdapter;->llDimmerLayoutFlag:[Ljava/lang/String;

    iget v3, p0, LAdapter/SelectSwitchesAdapter$1;->val$position:I

    const-string v4, "0"

    aput-object v4, v2, v3

    goto :goto_0
.end method
