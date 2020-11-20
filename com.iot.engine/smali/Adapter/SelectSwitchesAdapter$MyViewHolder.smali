.class public LAdapter/SelectSwitchesAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SelectSwitchesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/SelectSwitchesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

.field imgItemSwitch:Landroid/widget/ImageView;

.field llHideDimmer:Landroid/widget/LinearLayout;

.field seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

.field final synthetic this$0:LAdapter/SelectSwitchesAdapter;

.field txtItemRoom:Landroid/widget/TextView;

.field txtItemSwitch:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/SelectSwitchesAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/SelectSwitchesAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 202
    iput-object p1, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->this$0:LAdapter/SelectSwitchesAdapter;

    .line 203
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 204
    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->imgItemSwitch:Landroid/widget/ImageView;

    .line 205
    const v0, 0x7f0d018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->txtItemSwitch:Landroid/widget/TextView;

    .line 206
    const v0, 0x7f0d018f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->txtItemRoom:Landroid/widget/TextView;

    .line 207
    const v0, 0x7f0d019f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/AppCompatCheckBox;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->cbSwitchSelect:Landroid/support/v7/widget/AppCompatCheckBox;

    .line 208
    const v0, 0x7f0d0237

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->llHideDimmer:Landroid/widget/LinearLayout;

    .line 209
    const v0, 0x7f0d0114

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    iput-object v0, p0, LAdapter/SelectSwitchesAdapter$MyViewHolder;->seekDimmer:Lorg/adw/library/widgets/discreteseekbar/DiscreteSeekBar;

    .line 210
    return-void
.end method
