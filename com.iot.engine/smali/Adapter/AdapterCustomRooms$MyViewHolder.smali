.class public LAdapter/AdapterCustomRooms$MyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "AdapterCustomRooms.java"

# interfaces
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements LSession/ItemTouchHelperViewHolder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LAdapter/AdapterCustomRooms;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyViewHolder"
.end annotation


# instance fields
.field img:Landroid/widget/ImageView;

.field itemboard:Landroid/widget/LinearLayout;

.field final synthetic this$0:LAdapter/AdapterCustomRooms;

.field tv:Landroid/widget/TextView;

.field tvRoomCount:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(LAdapter/AdapterCustomRooms;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # LAdapter/AdapterCustomRooms;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 219
    iput-object p1, p0, LAdapter/AdapterCustomRooms$MyViewHolder;->this$0:LAdapter/AdapterCustomRooms;

    .line 220
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 221
    const v0, 0x7f0d0189

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomRooms$MyViewHolder;->tv:Landroid/widget/TextView;

    .line 222
    const v0, 0x7f0d018c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, LAdapter/AdapterCustomRooms$MyViewHolder;->tvRoomCount:Landroid/widget/TextView;

    .line 223
    const v0, 0x7f0d0188

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, LAdapter/AdapterCustomRooms$MyViewHolder;->img:Landroid/widget/ImageView;

    .line 224
    const v0, 0x7f0d018b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, LAdapter/AdapterCustomRooms$MyViewHolder;->itemboard:Landroid/widget/LinearLayout;

    .line 225
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 226
    return-void
.end method


# virtual methods
.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 3
    .param p1, "menu"    # Landroid/view/ContextMenu;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "menuInfo"    # Landroid/view/ContextMenu$ContextMenuInfo;

    .prologue
    const/4 v2, 0x0

    .line 230
    const-string v0, "Select The Action"

    invoke-interface {p1, v0}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 231
    const v0, 0x7f0d0276

    const-string v1, "Edit"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 232
    const v0, 0x7f0d0280

    const-string v1, "Hide"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 233
    const v0, 0x7f0d027d

    const-string v1, "Turn OFF All"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 234
    const v0, 0x7f0d027e

    const-string v1, "Turn ON All"

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/ContextMenu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 235
    return-void
.end method

.method public onItemClear()V
    .locals 2

    .prologue
    .line 244
    const-string v0, "AdapterCustomRooms"

    const-string v1, "onItemClear: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget-object v0, p0, LAdapter/AdapterCustomRooms$MyViewHolder;->this$0:LAdapter/AdapterCustomRooms;

    invoke-virtual {v0}, LAdapter/AdapterCustomRooms;->notifyDataSetChanged()V

    .line 246
    return-void
.end method

.method public onItemSelected()V
    .locals 2

    .prologue
    .line 239
    const-string v0, "AdapterCustomRooms"

    const-string v1, "onItemSelected: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return-void
.end method
