.class LFragments/ProfileScheduleListFragment$4;
.super Landroid/content/BroadcastReceiver;
.source "ProfileScheduleListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/ProfileScheduleListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileScheduleListFragment;


# direct methods
.method constructor <init>(LFragments/ProfileScheduleListFragment;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileScheduleListFragment;

    .prologue
    .line 240
    iput-object p1, p0, LFragments/ProfileScheduleListFragment$4;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 243
    iget-object v0, p0, LFragments/ProfileScheduleListFragment$4;->this$0:LFragments/ProfileScheduleListFragment;

    invoke-static {v0}, LFragments/ProfileScheduleListFragment;->access$500(LFragments/ProfileScheduleListFragment;)V

    .line 244
    return-void
.end method
