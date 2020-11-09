.class LAdapter/AdapterCustomRooms$1;
.super Ljava/lang/Object;
.source "AdapterCustomRooms.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomRooms;->onBindViewHolder(LAdapter/AdapterCustomRooms$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/AdapterCustomRooms;

.field final synthetic val$mholder:LAdapter/AdapterCustomRooms$MyViewHolder;


# direct methods
.method constructor <init>(LAdapter/AdapterCustomRooms;LAdapter/AdapterCustomRooms$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomRooms;

    .prologue
    .line 102
    iput-object p1, p0, LAdapter/AdapterCustomRooms$1;->this$0:LAdapter/AdapterCustomRooms;

    iput-object p2, p0, LAdapter/AdapterCustomRooms$1;->val$mholder:LAdapter/AdapterCustomRooms$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, LAdapter/AdapterCustomRooms$1;->this$0:LAdapter/AdapterCustomRooms;

    iget-object v1, p0, LAdapter/AdapterCustomRooms$1;->val$mholder:LAdapter/AdapterCustomRooms$MyViewHolder;

    invoke-virtual {v1}, LAdapter/AdapterCustomRooms$MyViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, LAdapter/AdapterCustomRooms;->setPosition(I)V

    .line 106
    const/4 v0, 0x0

    return v0
.end method
