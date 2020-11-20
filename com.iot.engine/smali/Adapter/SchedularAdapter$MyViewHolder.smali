.class public LAdapter/SchedularAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "SchedularAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/SchedularAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mLinear:Landroid/widget/LinearLayout;

.field final synthetic this$0:LAdapter/SchedularAdapter;

.field txtDate:Landroid/widget/TextView;

.field txtSwitchNameStatus:Landroid/widget/TextView;

.field txtSwitchStatus:Landroid/widget/TextView;

.field txtTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/SchedularAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/SchedularAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 138
    iput-object p1, p0, LAdapter/SchedularAdapter$MyViewHolder;->this$0:LAdapter/SchedularAdapter;

    .line 139
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 140
    const v0, 0x7f0d010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/SchedularAdapter$MyViewHolder;->txtTime:Landroid/widget/TextView;

    .line 141
    const v0, 0x7f0d0233

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/SchedularAdapter$MyViewHolder;->txtSwitchNameStatus:Landroid/widget/TextView;

    .line 142
    const v0, 0x7f0d0234

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/SchedularAdapter$MyViewHolder;->txtSwitchStatus:Landroid/widget/TextView;

    .line 143
    const v0, 0x7f0d010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/SchedularAdapter$MyViewHolder;->txtDate:Landroid/widget/TextView;

    .line 144
    const v0, 0x7f0d00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/SchedularAdapter$MyViewHolder;->mLinear:Landroid/widget/LinearLayout;

    .line 146
    return-void
.end method
