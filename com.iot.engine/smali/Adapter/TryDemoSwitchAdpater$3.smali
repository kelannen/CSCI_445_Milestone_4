.class LAdapter/TryDemoSwitchAdpater$3;
.super Ljava/lang/Object;
.source "TryDemoSwitchAdpater.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/TryDemoSwitchAdpater;->onBindViewHolder(LAdapter/TryDemoSwitchAdpater$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/TryDemoSwitchAdpater;

.field final synthetic val$holder:LAdapter/TryDemoSwitchAdpater$MyViewHolder;


# direct methods
.method constructor <init>(LAdapter/TryDemoSwitchAdpater;LAdapter/TryDemoSwitchAdpater$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/TryDemoSwitchAdpater;

    .prologue
    .line 209
    iput-object p1, p0, LAdapter/TryDemoSwitchAdpater$3;->this$0:LAdapter/TryDemoSwitchAdpater;

    iput-object p2, p0, LAdapter/TryDemoSwitchAdpater$3;->val$holder:LAdapter/TryDemoSwitchAdpater$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 212
    iget-object v0, p0, LAdapter/TryDemoSwitchAdpater$3;->this$0:LAdapter/TryDemoSwitchAdpater;

    iget-object v1, p0, LAdapter/TryDemoSwitchAdpater$3;->val$holder:LAdapter/TryDemoSwitchAdpater$MyViewHolder;

    invoke-virtual {v1}, LAdapter/TryDemoSwitchAdpater$MyViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, LAdapter/TryDemoSwitchAdpater;->setPosition(I)V

    .line 213
    const/4 v0, 0x0

    return v0
.end method
