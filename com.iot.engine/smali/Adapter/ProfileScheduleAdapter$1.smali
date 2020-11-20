.class LAdapter/ProfileScheduleAdapter$1;
.super Ljava/lang/Object;
.source "ProfileScheduleAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = LAdapter/ProfileScheduleAdapter;->onBindViewHolder(LAdapter/ProfileScheduleAdapter$MyViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LAdapter/ProfileScheduleAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(LAdapter/ProfileScheduleAdapter;I)V
    .locals 0
    .param p1, "this$0"    # LAdapter/ProfileScheduleAdapter;

    .prologue
    .line 60
    iput-object p1, p0, LAdapter/ProfileScheduleAdapter$1;->this$0:LAdapter/ProfileScheduleAdapter;

    iput p2, p0, LAdapter/ProfileScheduleAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, LAdapter/ProfileScheduleAdapter$1;->this$0:LAdapter/ProfileScheduleAdapter;

    iget-object v1, v0, LAdapter/ProfileScheduleAdapter;->listner:LSession/IOnClickOfScheduleList;

    iget-object v0, p0, LAdapter/ProfileScheduleAdapter$1;->this$0:LAdapter/ProfileScheduleAdapter;

    iget-object v0, v0, LAdapter/ProfileScheduleAdapter;->arrayList:Ljava/util/ArrayList;

    iget v2, p0, LAdapter/ProfileScheduleAdapter$1;->val$position:I

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-interface {v1, v0}, LSession/IOnClickOfScheduleList;->onClickOfScheduleList(Ljava/util/HashMap;)V

    .line 64
    return-void
.end method
