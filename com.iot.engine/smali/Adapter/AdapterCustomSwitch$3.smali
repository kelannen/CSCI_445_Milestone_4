.class LAdapter/AdapterCustomSwitch$3;
.super Ljava/lang/Object;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/AdapterCustomSwitch;->onBindViewHolder(LAdapter/AdapterCustomSwitch$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/AdapterCustomSwitch;

.field final synthetic val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$MyViewHolder;)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 282
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$3;->this$0:LAdapter/AdapterCustomSwitch;

    iput-object p2, p0, LAdapter/AdapterCustomSwitch$3;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 285
    iget-object v0, p0, LAdapter/AdapterCustomSwitch$3;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v1, p0, LAdapter/AdapterCustomSwitch$3;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    invoke-virtual {v1}, LAdapter/AdapterCustomSwitch$MyViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, LAdapter/AdapterCustomSwitch;->setPosition(I)V

    .line 286
    const/4 v0, 0x0

    return v0
.end method
