.class public LAdapter/ProfileScheduleAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ProfileScheduleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/ProfileScheduleAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field mLinear:Landroid/widget/LinearLayout;

.field final synthetic this$0:LAdapter/ProfileScheduleAdapter;

.field tvProfileName:Landroid/widget/TextView;

.field txtDate:Landroid/widget/TextView;

.field txtSwitchStatus:Landroid/widget/TextView;

.field txtTime:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/ProfileScheduleAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/ProfileScheduleAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 78
    iput-object p1, p0, LAdapter/ProfileScheduleAdapter$MyViewHolder;->this$0:LAdapter/ProfileScheduleAdapter;

    .line 79
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 80
    const v0, 0x7f0d010c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileScheduleAdapter$MyViewHolder;->txtTime:Landroid/widget/TextView;

    .line 81
    const v0, 0x7f0d0233

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileScheduleAdapter$MyViewHolder;->tvProfileName:Landroid/widget/TextView;

    .line 82
    const v0, 0x7f0d0234

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileScheduleAdapter$MyViewHolder;->txtSwitchStatus:Landroid/widget/TextView;

    .line 83
    const v0, 0x7f0d010a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/ProfileScheduleAdapter$MyViewHolder;->txtDate:Landroid/widget/TextView;

    .line 84
    const v0, 0x7f0d00d2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/ProfileScheduleAdapter$MyViewHolder;->mLinear:Landroid/widget/LinearLayout;

    .line 86
    return-void
.end method
