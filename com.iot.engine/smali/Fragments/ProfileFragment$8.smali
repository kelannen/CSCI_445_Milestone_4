.class LFragments/ProfileFragment$8;
.super Landroid/content/BroadcastReceiver;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LFragments/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LFragments/ProfileFragment;


# direct methods
.method constructor <init>(LFragments/ProfileFragment;)V
    .locals 0
    .param p1, "this$0"    # LFragments/ProfileFragment;

    .prologue
    .line 668
    iput-object p1, p0, LFragments/ProfileFragment$8;->this$0:LFragments/ProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 672
    iget-object v0, p0, LFragments/ProfileFragment$8;->this$0:LFragments/ProfileFragment;

    invoke-virtual {v0}, LFragments/ProfileFragment;->setAdapter()V

    .line 673
    return-void
.end method
