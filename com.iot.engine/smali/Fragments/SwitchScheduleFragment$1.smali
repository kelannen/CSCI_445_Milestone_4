.class LFragments/SwitchScheduleFragment$1;
.super Landroid/content/BroadcastReceiver;
.source "SwitchScheduleFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/SwitchScheduleFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/SwitchScheduleFragment;


# direct methods
.method constructor <init>(LFragments/SwitchScheduleFragment;)V
    .locals 0
    .param p1, "this$0"    # LFragments/SwitchScheduleFragment;

    .prologue
    .line 206
    iput-object p1, p0, LFragments/SwitchScheduleFragment$1;->this$0:LFragments/SwitchScheduleFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 209
    iget-object v0, p0, LFragments/SwitchScheduleFragment$1;->this$0:LFragments/SwitchScheduleFragment;

    invoke-static {v0}, LFragments/SwitchScheduleFragment;->access$200(LFragments/SwitchScheduleFragment;)V

    .line 210
    return-void
.end method
