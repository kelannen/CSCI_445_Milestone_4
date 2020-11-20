.class public LAdapter/AdapterCustomRecent$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdapterCustomRecent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterCustomRecent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field llLinear:Landroid/widget/LinearLayout;

.field switchSwitch:Landroid/support/v7/widget/SwitchCompat;

.field final synthetic this$0:LAdapter/AdapterCustomRecent;

.field tvRoomName:Landroid/widget/TextView;

.field tvSwitcName:Landroid/widget/TextView;

.field txtRangeValue:Landroid/widget/TextView;

.field txtTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/AdapterCustomRecent;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/AdapterCustomRecent;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 181
    iput-object p1, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->this$0:LAdapter/AdapterCustomRecent;

    .line 182
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 184
    const v0, 0x7f0d018e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->tvSwitcName:Landroid/widget/TextView;

    .line 185
    const v0, 0x7f0d018d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->llLinear:Landroid/widget/LinearLayout;

    .line 186
    const v0, 0x7f0d01a2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->txtRangeValue:Landroid/widget/TextView;

    .line 187
    const v0, 0x7f0d0153

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->img:Landroid/widget/ImageView;

    .line 188
    const v0, 0x7f0d0190

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SwitchCompat;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->switchSwitch:Landroid/support/v7/widget/SwitchCompat;

    .line 189
    const v0, 0x7f0d018f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->tvRoomName:Landroid/widget/TextView;

    .line 190
    const v0, 0x7f0d010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomRecent$MyViewHolder;->txtTime:Landroid/widget/TextView;

    .line 192
    return-void
.end method
