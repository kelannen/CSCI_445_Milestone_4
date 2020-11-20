.class public LAdapter/DeviceListAdapter$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "DeviceListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/DeviceListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field btnStatus:Landroid/widget/Button;

.field cvRow:Landroid/support/v7/widget/CardView;

.field final synthetic this$0:LAdapter/DeviceListAdapter;

.field tvIP:Landroid/widget/TextView;

.field tvMac:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/DeviceListAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/DeviceListAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 87
    iput-object p1, p0, LAdapter/DeviceListAdapter$MyViewHolder;->this$0:LAdapter/DeviceListAdapter;

    .line 88
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 89
    const v0, 0x7f0d012a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/DeviceListAdapter$MyViewHolder;->tvIP:Landroid/widget/TextView;

    .line 90
    const v0, 0x7f0d012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/DeviceListAdapter$MyViewHolder;->tvMac:Landroid/widget/TextView;

    .line 91
    const v0, 0x7f0d0129

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/CardView;

    iput-object v0, p0, LAdapter/DeviceListAdapter$MyViewHolder;->cvRow:Landroid/support/v7/widget/CardView;

    .line 92
    const v0, 0x7f0d012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, LAdapter/DeviceListAdapter$MyViewHolder;->btnStatus:Landroid/widget/Button;

    .line 93
    return-void
.end method
