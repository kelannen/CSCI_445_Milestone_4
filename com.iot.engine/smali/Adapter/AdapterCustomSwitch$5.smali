.class LAdapter/AdapterCustomSwitch$5;
.super Ljava/lang/Object;
.source "AdapterCustomSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$MyViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/AdapterCustomSwitch;

    .prologue
    .line 310
    iput-object p1, p0, LAdapter/AdapterCustomSwitch$5;->this$0:LAdapter/AdapterCustomSwitch;

    iput-object p2, p0, LAdapter/AdapterCustomSwitch$5;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iput p3, p0, LAdapter/AdapterCustomSwitch$5;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 314
    iget-object v0, p0, LAdapter/AdapterCustomSwitch$5;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v0, v0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgBackward:Landroid/widget/ImageView;

    const v1, 0x7f020165

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 315
    iget-object v0, p0, LAdapter/AdapterCustomSwitch$5;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v0, v0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgForward:Landroid/widget/ImageView;

    const v1, 0x7f020091

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 316
    iget-object v0, p0, LAdapter/AdapterCustomSwitch$5;->val$holder:LAdapter/AdapterCustomSwitch$MyViewHolder;

    iget-object v0, v0, LAdapter/AdapterCustomSwitch$MyViewHolder;->imgPause:Landroid/widget/ImageView;

    const v1, 0x7f020169

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 317
    new-instance v1, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;

    iget-object v0, p0, LAdapter/AdapterCustomSwitch$5;->this$0:LAdapter/AdapterCustomSwitch;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;-><init>(LAdapter/AdapterCustomSwitch;LAdapter/AdapterCustomSwitch$1;)V

    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v3, "1"

    aput-object v3, v2, v0

    const/4 v0, 0x1

    const-string v3, "1"

    aput-object v3, v2, v0

    const/4 v3, 0x2

    iget-object v0, p0, LAdapter/AdapterCustomSwitch$5;->this$0:LAdapter/AdapterCustomSwitch;

    iget-object v0, v0, LAdapter/AdapterCustomSwitch;->switchDatas:Ljava/util/ArrayList;

    iget v4, p0, LAdapter/AdapterCustomSwitch$5;->val$position:I

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    const-string v4, "SwitchID"

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, LAdapter/AdapterCustomSwitch$AsyncTaslForCurtainStatusChange;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 318
    return-void
.end method
