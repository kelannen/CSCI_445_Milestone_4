.class LAdapter/SchedularAdapter$1;
.super Ljava/lang/Object;
.source "SchedularAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/SchedularAdapter;->onBindViewHolder(LAdapter/SchedularAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/SchedularAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/SchedularAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/SchedularAdapter;

    .prologue
    .line 102
    iput-object p1, p0, LAdapter/SchedularAdapter$1;->this$0:LAdapter/SchedularAdapter;

    iput p2, p0, LAdapter/SchedularAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 105
    iget-object v0, p0, LAdapter/SchedularAdapter$1;->this$0:LAdapter/SchedularAdapter;

    iget-object v0, v0, LAdapter/SchedularAdapter;->thisScheduleFlag:Ljava/lang/String;

    const-string v1, "SCHEDULE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 106
    iget-object v1, p0, LAdapter/SchedularAdapter$1;->this$0:LAdapter/SchedularAdapter;

    iget-object v0, p0, LAdapter/SchedularAdapter$1;->this$0:LAdapter/SchedularAdapter;

    iget-object v0, v0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/SchedularAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget v2, p0, LAdapter/SchedularAdapter$1;->val$position:I

    invoke-virtual {v1, v0, v2}, LAdapter/SchedularAdapter;->showDialog(Ljava/util/HashMap;I)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, LAdapter/SchedularAdapter$1;->this$0:LAdapter/SchedularAdapter;

    iget-object v1, v0, LAdapter/SchedularAdapter;->thisInstance:Lcom/iot/engine/AddNewTask;

    iget-object v0, p0, LAdapter/SchedularAdapter$1;->this$0:LAdapter/SchedularAdapter;

    iget-object v0, v0, LAdapter/SchedularAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/SchedularAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Lcom/iot/engine/AddNewTask;->onClickOfScheduleList(Ljava/util/HashMap;)V

    goto :goto_0
.end method
